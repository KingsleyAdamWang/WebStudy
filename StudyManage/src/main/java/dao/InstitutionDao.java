package dao;

import bean.Institution;
import bean.Message;
import contant.State;

import java.util.List;

/**
 * Created by mengf on 2017/3/20 0020.
 */
public interface InstitutionDao {

    public Institution getInstitutionsByMail(String institution_email);

    public State save(Institution institution);

    public State update(Institution institution);

    public Institution getInstitutionById(int id);
}
