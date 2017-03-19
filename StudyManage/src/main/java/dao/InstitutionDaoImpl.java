package dao;

import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

/**
 * Created by mengf on 2017/3/20 0020.
 */
@Repository
public class InstitutionDaoImpl implements InstitutionDao {
    @Resource
    BaseDao baseDao;
}
