package com.web.service;

import com.web.model.Users;

import java.util.List;

public interface UserService {
    int insertUser(Users users);
    int deleteUser(String id);
    int updateUser(Users users);
    Users getUserByName(String username);
    List<Users> getUsers();
}
