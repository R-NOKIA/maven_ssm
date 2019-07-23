package com.web.service.impl;

import com.web.dao.UserDao;
import com.web.model.Users;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public int insertUser(Users users) {
        return 0;
    }

    @Override
    public int deleteUser(String id) {
        return 0;
    }

    @Override
    public int updateUser(Users users) {
        return 0;
    }

    @Override
    public Users getUserByName(String username) {
        return userDao.getUserByName(username);
    }

    @Override
    public List<Users> getUsers() {
        return null;
    }
}
