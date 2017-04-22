package service;

import bean.Message;
import contant.State;
import org.springframework.stereotype.Service;
import util.CheckCodeGenerator;
import util.mail.MailFactory;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by mengf on 2017/3/20 0020.
 */
@Service
public class ManagerServiceImpl implements ManagerService {

    @Resource
    private HttpServletRequest request;
    public Message sendCheckCode(String mailAddress) {
        MailFactory factory = MailFactory.getInstance();
        String checkCode =  CheckCodeGenerator.getCheckCode(mailAddress);
        StringBuffer content = new StringBuffer("亲爱的用户：").append("\n")
                .append("欢迎您使用蓝鲸网验证码服务！").append("\n")
                .append("本次请求的验证码为"+checkCode).append(",为了保护您的账号安全，请不要泄漏验证码！")
                .append("\n").append("若您发送了多次验证码请求，请以最后一次邮件中的验证码为准！").append("\n")
                .append("若您对我们系统有任何宝贵意见，请通过本邮件联系，谢谢您的合作。").append("\n")
                .append("蓝鲸网邮件系统");
        Message message = factory.sendMail(mailAddress,"亲爱的用户",checkCode,"蓝鲸网验证码",content.toString());
        System.out.println(message);
        return message;
    }

    public Message logout() {
        request.getSession().invalidate();
        return new Message(State.SUCCESS,"已注销");
    }
}
