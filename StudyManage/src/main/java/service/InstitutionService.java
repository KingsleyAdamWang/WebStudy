package service;

import bean.Message;

/**
 * Created by mengf on 2017/3/20 0020.
 */
public interface InstitutionService {
    public Message register(String institution_name, String institution_owner, String institution_owner_id, String institution_email, String check_code, String institution_tel, String institution_password);

    public Message login(String username, String password);

    public Message institutionCenter(int index);
}
