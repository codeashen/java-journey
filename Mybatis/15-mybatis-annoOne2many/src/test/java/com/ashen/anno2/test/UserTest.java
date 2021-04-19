package com.ashen.anno2.test;

import com.ashen.anno2.dao.IUserDao;
import com.ashen.anno2.domain.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.InputStream;
import java.util.List;

public class UserTest {

    private InputStream in;
    private SqlSessionFactory factory;
    private SqlSession session;
    private IUserDao userDao;

    @Before
    public  void init()throws Exception{
        in = Resources.getResourceAsStream("SqlMapConfig.xml");
        factory = new SqlSessionFactoryBuilder().build(in);
        session = factory.openSession();
        userDao = session.getMapper(IUserDao.class);
    }

    @After
    public  void destroy()throws  Exception{
        session.commit();
        session.close();
        in.close();
    }

    /**
     * 一对多映射关系，延迟加载
     */
    @Test
    public  void  testFindAll(){
        List<User> users = userDao.findAll();
        for(User user : users){
           System.out.println("---每个用户的信息----");
           System.out.println(user);
           System.out.println(user.getAccounts());
        }
    }

    @Test
    public void testFindOne(){
        User user = userDao.findById(46);
        System.out.println(user);
    }

}
