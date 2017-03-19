package service;

import dao.TestDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by mengf on 2017/3/18 0018.
 */
@Service
public class TestServiceImpl implements TestService{
    @Resource
    TestDao testDao;

    public void test(){
        testDao.test();
    }
}
