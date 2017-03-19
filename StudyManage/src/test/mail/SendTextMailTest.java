package mail;

import bean.Message;
import org.junit.Test;
import util.mail.MailFactory;

/**
 * Created by mengf on 2017/3/15 0015.
 */


public class SendTextMailTest {

    @Test
    public void test(){
        MailFactory factory = MailFactory.getInstance();
        Message message = factory.sendMail("141250133@smail.nju.edu.cn","小王","checkCode","无题","content");
        System.out.println(message);
    }
}
