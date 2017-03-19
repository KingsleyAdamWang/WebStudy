package hibernateTest;

import dao.TestDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * Created by mengf on 2017/3/18 0018.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/dispatcher-servlet.xml","/applicationContext.xml"})
public class TestLink {
    @Resource
    TestDao testDao;

    @Test
    public void test(){
       if (testDao==null){
           System.out.println("dao is null");
       }
       testDao.test();
    }
}
