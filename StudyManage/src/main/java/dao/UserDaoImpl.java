package dao;

import bean.Message;
import bean.User;
import contant.Keys;
import contant.State;
import org.springframework.stereotype.Repository;
import util.StringUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by mengf on 2017/3/20 0020.
 */
@Repository
public class UserDaoImpl implements UserDao {

    @Resource
    private BaseDao baseDao;

    public User getUsersByMail(String email) {
        User findUser = null;
        List<User> users = (List<User>) baseDao.findByProperty(User.class, Keys.EMAIL, email);
        if (users.size()>0){
            findUser=users.get(0);
        }
        return findUser;
    }

    public State save(User user) {
        return baseDao.save(user);
    }

    public State update(User user) {
        return baseDao.update(user);
    }

    public User getUserById(int id) {
        return (User) baseDao.findById(User.class,id);
    }
}
