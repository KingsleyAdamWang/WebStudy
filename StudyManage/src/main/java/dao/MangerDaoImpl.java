package dao;

import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

/**
 * Created by mengf on 2017/3/20 0020.
 */
@Repository
public class MangerDaoImpl implements ManagerDao {
    @Resource
    BaseDao baseDao;
}
