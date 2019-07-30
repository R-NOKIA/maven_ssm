package com.web.dao;

import com.web.model.Users;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface UserDao {
    int insertUser(Users users);
    int deleteUser(Integer use_id);
    int updateUser(Users users);
    Users getUserByName(String username);
    List<Users> getUsers();
    Users getuserrightbyid(Integer user_id);
    Users getuserorderbyid(Integer user_id);
}
