package com.web.controller;

import com.web.model.Users;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/user")
@SessionAttributes("users")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping("/checkLogin")
    public String checkLogin(Users users, Model model){
        System.out.println(users.getPassword());
        return "0";
    }
}
