package com.web.controller;

import com.web.model.Orders;
import com.web.model.Users;
import com.web.service.OrderService;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private UserService userService;
    @RequestMapping("/tomakeorder")
    public String tomakeorder()
    {
        return "makeorder";
    }

    @RequestMapping("/toOrderDetail")
    public String OrderDetail(HttpServletRequest request)
    {
        Integer order_id=Integer.valueOf(request.getParameter("id"));
        String money=request.getParameter("money");
        Orders orders = orderService.getorderbyorderid(order_id);
        request.getSession().setAttribute("order",orders);
        request.getSession().setAttribute("money",money);
        return "OrderDetail";
    }

    @RequestMapping("/add")
    public String addorder(Orders orders, HttpServletRequest request)
    {
        Users users=(Users)request.getSession().getAttribute("user");
        orders.setUser_id(users.getUser_id());
        if (orderService.insertorder(orders)>0) {
            users=userService.getuserorderbyid(users.getUser_id());
            request.getSession().setAttribute("user",users);
            return "index";
        }
        else {
            request.getSession().setAttribute("order","申请订单失败");
            return "makeorder";
        }
    }
    @RequestMapping("/update")
    public String update(Orders orders,HttpServletRequest request)
    {
        if (orderService.updateorders(orders)>0) {
            request.getSession().setAttribute("order","更改订单成功");
            return "update";
        }
        else {
            request.getSession().setAttribute("order","更改订单失败");
            return "update";
        }
    }
    @RequestMapping("/delete")
    public String delete(Orders orders,HttpServletRequest request)
    {
        if(orderService.deleteorder(orders.getOrder_id())>0)
        {
            request.getSession().setAttribute("order","删除订单成功");
            return "delete";
        }
        else
        {
            request.getSession().setAttribute("order","删除订单失败");
            return "delete";
        }
    }
}
