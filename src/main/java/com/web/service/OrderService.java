package com.web.service;

import com.web.model.Orders;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface OrderService {
    int insertorder(Orders order);
    int deleteorder(Integer order_id);
    int updateorders(Orders orders);
    Orders getorderbyorderid(Integer order_id);
    List<Orders> getordersByuserid(Integer user_id);
    List<Orders> getorders();
}
