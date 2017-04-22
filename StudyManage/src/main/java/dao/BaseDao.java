package dao;

import contant.State;
import org.hibernate.*;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;

import java.util.List;

/**
 * Created by mengf on 2017/3/20 0020.
 */
public interface BaseDao {

    public SessionFactory getSessionFactory();
    public void setSessionFactory(SessionFactory sessionFactory);
    public Session getSession();
    public State save(Object entity) ;
    public State update(Object entity) ;
    public State delete(Object entity);
    public State deleteById(Class<?> className, int id);
    public List<?> getPageAll(Class<?> className, int up, int size);
    public List<?> getAll(Class<?> className) ;
    public Object findById(Class<?> className, int id);
    public Object findByPrimaryKey(Class<?> className, String key);
    public List<?> findByExample(Object entity) ;
    public List<?> findByProperty(Class<?> className, String propertyName, Object value) ;
    public List<Object[]> execSqlQuery(String sql);
    public List<Object> execSingleQuery(String sql);
    public int clearTable(String myTable);
}
