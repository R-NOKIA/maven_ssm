package com.web.service;

import com.web.model.Users;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface UserService {
    int insertUser(Users users);
    int deleteUser(Integer use_id);
    int updateUser(Users users);
    Users getUserByName(String username);
    List<Users> getUsers();
    Users getuserrightbyid(Integer user_id);
    Users getuserorderbyid(Integer user_id);
}
