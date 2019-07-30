package com.web.service.impl;

import com.web.dao.UserDao;
import com.web.model.Users;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public int insertUser(Users users) {
        if(userDao.insertUser(users)>0) {
            return 1;
        }
        else
            return 0;
    }

    @Override
    public int deleteUser(Integer user_id) {
        if(userDao.deleteUser(user_id)>0) {
            return 1;
        }
        else
            return 0;
    }

    @Override
    public int updateUser(Users users) {
        if(userDao.updateUser(users)>0) {
            return 1;
        }
        else
            return 0;
    }

    @Override
    public Users getUserByName(String username) {
        return userDao.getUserByName(username);
    }

    @Override
    public List<Users> getUsers() {
        return userDao.getUsers();
    }

    @Override
    public Users getuserrightbyid(Integer user_id) {
        return userDao.getuserrightbyid(user_id);
    }

    @Override
    public Users getuserorderbyid(Integer user_id) {
        return userDao.getuserorderbyid(user_id);
    }

}
