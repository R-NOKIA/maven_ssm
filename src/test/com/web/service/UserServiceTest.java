package com.web.service;

import com.web.model.Users;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mvc.xml"})
public class UserServiceTest {
    @Autowired
    private UserService userService;

    @Test
    public void world() throws Exception{
        Users users= userService.getUserByName("11");
        System.out.println(users.getId());
    }
}
