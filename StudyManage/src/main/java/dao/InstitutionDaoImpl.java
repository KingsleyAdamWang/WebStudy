package dao;

import bean.Institution;
import bean.Message;
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
public class InstitutionDaoImpl implements InstitutionDao {
    @Resource
    private BaseDao baseDao;


    public Institution getInstitutionsByMail(String institution_email) {
        List<Institution> institutions = (List<Institution>) baseDao.findByProperty(Institution.class, Keys.EMAIL, institution_email);
        if (institutions.size()>0)
            return institutions.get(0);
        return null;
    }

    public State save(Institution institution) {
        return baseDao.save(institution);
    }

    public State update(Institution institution) {
        return baseDao.update(institution);
    }

    public Institution getInstitutionById(int id) {
        return (Institution) baseDao.findById(Institution.class,id);
    }
}
