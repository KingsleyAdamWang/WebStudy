package service;

import dao.TestDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

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
