package service;

import bean.Institution;
import bean.Message;
import contant.Keys;
import contant.State;
import dao.InstitutionDao;
import org.springframework.stereotype.Service;
import util.CheckCodeGenerator;
import util.StringUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 * Created by mengf on 2017/3/20 0020.
 */
@Service
public class InstitutionServiceImpl implements InstitutionService {
    @Resource
    private InstitutionDao institutionDao;
    @Resource
    private HttpServletRequest request;

    public Message register(String institution_name, String institution_owner, String institution_owner_id, String institution_email, String check_code, String institution_tel, String institution_password)
    {
        HashMap<String,String> checkMap = CheckCodeGenerator.getCheckCodeMapping();
        String compareCode = checkMap.get(institution_email);
        if (!(check_code).equals(check_code)){
            return new Message(State.ERROR,"验证码验证失败,请确认你输入的验证码是否和邮件中的一致");
        }else{

            if (institutionDao.getInstitutionsByMail(institution_email)!=null){
                return new Message(State.ERROR,"该邮箱被别的机构占用，注册失败，请输入另一个邮箱");
            }
            Institution institution = new Institution();
            institution.setName(institution_name);
            institution.setOwnerName(institution_owner);
            institution.setOwnerIdentityId(institution_owner_id);
            institution.setMail(institution_email);
            institution.setTel(institution_tel);
            institution.setPassword(institution_password);

            State state = institutionDao.save(institution);
            if (state==State.ERROR){
                return new Message(State.ERROR,"系统内部发生错误导致注册失败，请联系客服，好让程序猿抓紧debug！");
            }else {
                //创建session保存起来。
                institution.setName(Keys.INSTIT+StringUtil.getId(institution.getId()));
                institution.setHeadPath("/head/institution/default.jpg");
                institutionDao.update(institution);
                HttpSession session = request.getSession(true);
                session.setAttribute(Keys.INSTITUTION,institution);
                if (session.getAttribute(Keys.USER)!=null){
                    session.removeAttribute(Keys.USER);
                }
                return new Message(State.SUCCESS,"机构注册成功！\n"+"机构号为："+ StringUtil.getId(institution.getId()));
            }
        }
    }

    public Message login(String username, String password) {
        boolean isId = username.matches("[0-9]+");
        Institution institution = null;
        if (isId){
            institution =  institutionDao.getInstitutionById(StringUtil.getIdInteger(username));
        }else {
            institution =  institutionDao.getInstitutionsByMail(username);
        }
        if (institution==null){
            return new Message(State.ERROR,"抱歉！没有该机构账号，请注册！或系统繁忙！请尝试重新登录！");
        }
        else {
            if (institution.getPassword().equals(password)){
                HttpSession session = request.getSession(true);
                session.setAttribute(Keys.INSTITUTION,institution);
                if (session.getAttribute(Keys.USER)!=null){
                    session.removeAttribute(Keys.USER);
                }
                return new Message(State.SUCCESS,"登录成功！");
            }else {
                return new Message(State.ERROR,"密码错误！请输入正确的密码!");
            }
        }
    }

    public Message institutionCenter(int index) {
        HttpSession session = request.getSession(false);
        if (session!=null||session.getAttribute(Keys.INSTITUTION)!=null){
            session.setAttribute(Keys.INDEX,index);
            return new Message(State.SUCCESS,"");
        }
        return new Message(State.ERROR,"未检测到登录状态，请先登录");
    }


}
