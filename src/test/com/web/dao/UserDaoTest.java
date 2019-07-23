package com.web.dao;

import com.web.model.Users;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mvc.xml"})
public class UserDaoTest {
    @Resource
    private UserDao userDao;
    @Test
    public void hello() throws Exception{
        Users users=userDao.getUserByName("test");
        System.out.println(users.getId());

    }
}
