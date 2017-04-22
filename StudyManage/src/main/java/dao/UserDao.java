package dao;

import bean.Message;
import bean.User;
import contant.State;

import java.util.List;

/**
 * Created by mengf on 2017/3/20 0020.
 */

public interface UserDao {

    public User getUsersByMail(String email);

    public State save(User user);

    public State update(User user);

    public User getUserById(int id);
}
