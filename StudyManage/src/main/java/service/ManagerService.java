package service;

import bean.Message;

/**
 * Created by mengf on 2017/3/20 0020.
 */
public interface ManagerService {
    /**
     * 发送邮件验证码
     * @param mailAddress
     * @return
     */
    public Message sendCheckCode(String mailAddress);

    public Message logout();
}
