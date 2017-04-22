package service;

import bean.Message;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by mengf on 2017/3/20 0020.
 */
public interface UserService {
    public Message register(String email, String checkCode, String tel, String password);

    public Message login(String username, String password);

    public Message userCenter(int index);

    public Message updateBasic(MultipartFile imgFile,String name, String birth, String comment);

    public Message updateSafe(String bankCard, String email, String checkCode);
}
