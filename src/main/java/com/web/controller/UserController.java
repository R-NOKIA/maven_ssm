package com.web.controller;

import com.web.model.Users;
import com.web.service.OrderService;
import com.web.service.RightService;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private RightService rightService;
    @RequestMapping("/test")
    public String test()
    {
        return "lb";
    }
    @RequestMapping("/toindex")
    public String toindex(HttpServletRequest request)
    {
        if (request.getSession().getAttribute("user")==null){
            return "lb";
        }
        return "index";
    }

    @RequestMapping("/tologin")
    public String tologin()
    {
        return "login";
    }

    @RequestMapping("/toregister")
    public String toregiter()
    {
        return "register";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(Model model, HttpServletRequest request){
        System.out.println("denglu");
        String oldpassword=userService.getUserByName(request.getParameter("username")).getPassword();
        String newPassword=request.getParameter("password");

        if(oldpassword.equals(newPassword))
        {
            Users user = userService.getUserByName(request.getParameter("username"));
            user=userService.getuserorderbyid(user.getUser_id());
            request.getSession().setAttribute("user", user);
            System.out.println(user);
            return "index.ftl";
        }
        else {
            return "login";
        }
    }
    @RequestMapping("/register")
    public String register(Users users,HttpServletRequest request)
    {
        if(userService.insertUser(users)>0) {
            request.getSession().setAttribute("reuser", "注册成功");
            return "login";
        }
        else
        {
            request.getSession().setAttribute("reuser", "注册失败，信息可能不完整或重复");
            return "register";
        }
    }
    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(HttpServletRequest request)
    {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String telphone=request.getParameter("telphone");
        String nickname=request.getParameter("nickname");

        Users newusers=(Users)request.getSession().getAttribute("user");
        System.out.println(newusers);

        Users users=new Users();
        users.setUser_id(newusers.getUser_id());
        users.setName(name);
        users.setNickname(nickname);
        users.setTelphone(telphone);
        users.setEmail(email);

        userService.updateUser(users);
        newusers=userService.getuserorderbyid(newusers.getUser_id());
        request.getSession().setAttribute("user",newusers);
        System.out.println(users);
        return "index";
    }
    @RequestMapping("/demand")
    public String demand(String username, HttpSession session)
    {
        Users users=userService.getUserByName(username);
        session.setAttribute("deuser",users);
        return "demand";
    }
    @RequestMapping("/delete")
    @ResponseBody
    public String delete(Integer user_id)
    {
        if (userService.deleteUser(user_id)>0
        &&orderService.deleteorder(user_id)>0
        &&rightService.deleteright(user_id)>0)
            return "1";
        else
            return "0";
    }
    @RequestMapping("/getuser_order")
    public String getuserandorder(Users users,HttpSession session)
    {
        Users users1=userService.getuserorderbyid(users.getUser_id());
        session.setAttribute("uando",users1);
        return "user";
    }
}
