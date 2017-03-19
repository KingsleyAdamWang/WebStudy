package dao;

import bean.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

/**
 * Created by mengf on 2017/3/18 0018.
 */
@Repository
public class TestDao {

    @Resource
    SessionFactory factory;


    public void test(){
//        if (factory==null){
//            System.out.println("ops");
//        }else {
//            System.out.print("not null");
//        }
//
//        Session session = factory.openSession();
//
//        Transaction transaction = session.getTransaction();
//        transaction.begin();
//
//        session.save(new User("2","xiaoming"));
//
//        transaction.commit();
//        session.close();
    }
}
