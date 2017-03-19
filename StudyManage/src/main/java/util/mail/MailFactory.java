package util.mail;

import bean.Message;
import contant.State;

/**
 * Created by mengf on 2017/3/15 0015.
 */
public class MailFactory {

    private static MailFactory factory;
    private static MailSenderInfo mailSenderInfo;

    private MailFactory() {
        mailSenderInfo = new MailSenderInfo();
        mailSenderInfo.setMailServerHost("smtp.163.com");
        mailSenderInfo.setMailServerPort("25");
        mailSenderInfo.setValidate(true);
        //官方邮箱的用户名
        mailSenderInfo.setUserName("蓝鲸网邮件验证码发送邮箱");
        //第三方登录的密码 现在好多都需要用到这个密码 而不是登录密码
        mailSenderInfo.setPassword("WangDong0719");
        //邮箱地址
        mailSenderInfo.setFromAddress("iammengfengfei@163.com");
//        //邮件标题
//        mailSenderInfo.setSubject("蓝鲸网验证码");



    }

    public static MailFactory getInstance() {
        //这种锁能解决单例模式带来的线程安全问题
        if (factory == null) {
            synchronized (MailFactory.class) {
                if (factory == null) {
                    factory = new MailFactory();
                }
            }
        }
        return factory;
    }

    public Message sendMail(String receiver, String username, String checkCode,String subject,String content) {
        Message message ;
        mailSenderInfo.setToAddress(receiver);
        //可能会有不同主题的邮件需要发送 所以将subject和content都作为参数传入了
        mailSenderInfo.setSubject(subject);
        mailSenderInfo.setContent(content);
        //发送邮件
        MailSender sender = new MailSender();
        Boolean state = sender.sendTextMail(mailSenderInfo);
        if (state){
            message = new Message(State.SUCCESS,"邮件发送成功");
        }else {
            message = new Message(State.ERROR,"邮件发送失败");
        }

        return message;
    }
}
