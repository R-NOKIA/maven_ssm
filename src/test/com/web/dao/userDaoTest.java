package com.web.dao;

import com.web.model.Users;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mvc.xml"})
public class userDaoTest {
    @Autowired
    private UserDao userDao;
    @Test
    public void  insertUser()
    {
        Users users=new Users();
        users.setUsername("HSR");
        users.setPassword("123456");
        users.setName("Frank");
        users.setSex("男");
        users.setEmail("749963470@qq.com");
        users.setTelphone("18581542614");
        users.setNickname("R师傅");
        System.out.println(userDao.insertUser(users));
    }
    @Test
    public void deleteUser()
    {
        System.out.println(userDao.deleteUser(2020));
    }
    @Test
    public void updateUser()
    {
        Users userupdate=new Users();
        userupdate.setUser_id(2);
        userupdate.setEmail("2435098177@qq.com");
        System.out.println(userDao.updateUser(userupdate));
    }
    @Test
    public void getUserByName() throws Exception{
        System.out.println(userDao.getUserByName("HSR"));
    }
    @Test
    public void getUsers()
    {
        List<Users> userget=userDao.getUsers();
        int i=0;
        while (true) {
            if(i<userget.size()) {
                System.out.println(userget.get(i));
                i++;
            }
            else
                break;
        }
    }
    @Test
    public void getuserrightbyid()
    {
        Users users=userDao.getuserrightbyid(1);
        System.out.println(users);
    }
    @Test
    public void getuserorderbyid()
    {
        Users users=userDao.getuserorderbyid(1);
        System.out.println(users);
    }

}
