package service;

import bean.Message;
import bean.User;
import contant.Keys;
import contant.State;
import dao.UserDao;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.HashMap;
import java.util.List;

/**
 * Created by mengf on 2017/3/20 0020.
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private HttpServletRequest request;
    @Resource
    private UserDao userDao;

    public Message register(String email, String checkCode, String tel, String password) {
        HashMap<String, String> checkMap = CheckCodeGenerator.getCheckCodeMapping();
        String compareCode = checkMap.get(email);

        if (!(checkCode).equals(checkCode)) {
            return new Message(State.ERROR, "验证码验证失败,请确认你输入的验证码是否和邮件中的一致");
        } else {
            if (userDao.getUsersByMail(email) != null) {
                return new Message(State.ERROR, "该邮箱被人占用，注册失败，请输入另一个邮箱");
            }
            User user = new User();
            user.setMail(email);
            user.setTel(tel);
            user.setPassword(password);


            if (userDao.save(user) == State.ERROR) {
                return new Message(State.ERROR, "系统内部发生错误导致注册失败，请联系客服，好让程序猿抓紧debug！");
            } else {
                //创建session保存起来。
                user.setName(Keys.STUDENT + StringUtil.getId(user.getId()));
                user.setHeadPath("/head/user/default.jpg");
                user.setVIP(false);
                userDao.update(user);
                HttpSession session = request.getSession(true);
                session.setAttribute(Keys.USER, user);
                if (session.getAttribute(Keys.INSTITUTION) != null) {
                    session.removeAttribute(Keys.INSTITUTION);
                }
                return new Message(State.SUCCESS, "注册成功！\n" + "您的用户账号为：" + StringUtil.getId(user.getId()));
            }

        }
    }

    public Message login(String username, String password) {
        boolean isId = username.matches("[0-9]+");
        User user = null;
        if (isId) {
            user = userDao.getUserById(StringUtil.getIdInteger(username));
        } else {
            user = userDao.getUsersByMail(username);
        }

        if (user == null) {
            return new Message(State.ERROR, "抱歉！没有该用户！或系统繁忙！请尝试重新登录！");
        } else {
            if (user.getPassword().equals(password)) {
                HttpSession session = request.getSession(true);
                session.setAttribute(Keys.USER, user);
                if (session.getAttribute(Keys.INSTITUTION) != null) {
                    session.removeAttribute(Keys.INSTITUTION);
                }
                return new Message(State.SUCCESS, "登录成功！");
            } else {
                return new Message(State.ERROR, "密码错误！请输入正确的密码!");
            }
        }
    }

    public Message userCenter(int index) {
        HttpSession session = request.getSession(false);
        if (session != null || session.getAttribute(Keys.USER) != null) {
            session.setAttribute(Keys.INDEX, index);
            return new Message(State.SUCCESS, "");
        }
        return new Message(State.ERROR, "未检测到登录状态，请先登录");
    }

    public Message updateBasic(MultipartFile imgFile, String name, String birth, String comment) {

        try {
            HttpSession session = request.getSession(false);
            if (session == null || session.getAttribute(Keys.USER) == null) {
                return new Message(State.ERROR, "登录失效，请重新登录");
            }
            User user = (User) session.getAttribute(Keys.USER);

            // /后缀名
            String temp = imgFile.getOriginalFilename();
            temp = temp.substring(temp.lastIndexOf('.')+1, temp.length());

            File tempFile = new File("D:\\IDEAworkspace\\WebStudy\\StudyManage\\src\\main\\webapp\\head\\user\\"+user.getId()+"."+temp);

            File avator = new File( "D:\\IDEAworkspace\\WebStudy\\StudyManage\\target\\wd14\\head\\user\\"+ user.getId() + "." + temp);
            // 创建 文件 文件夹 如果不存在的话
            if (!avator.getParentFile().exists()) {
                avator.getParentFile().mkdir();
            }
            if (!avator.exists()) {
                avator.createNewFile();
            }
            //输出文件流
            imgFile.transferTo(avator);
            //改变大小
            ImageUtil.changeSize(avator,100,100);

            FileUtil.copy(avator,tempFile);
            user.setHeadPath("/head/user/"+user.getId()+".png");
            user.setName(name);
            user.setComment(comment==null?"":comment);
            user.setBirth(DateUtil.getDate(birth));

            //数据库以及session的更新
            userDao.update(user);
            session.setAttribute(Keys.USER,user);
            return new Message(State.SUCCESS, "修改成功！");

        } catch (IOException e) {
            e.printStackTrace();
            return new Message(State.ERROR,"出现了不可描述的IO错误");
        }

    }

    public Message updateSafe(String bankCard, String email, String checkCode) {
        return null;
    }


}
