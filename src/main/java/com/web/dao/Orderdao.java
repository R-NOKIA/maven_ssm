package com.web.dao;

import com.web.model.Orders;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
public interface Orderdao {
    int insertorder(Orders order);
    int deleteorder(Integer order_id);
    int deleteorderByuserid(Integer user_id);
    int updateorders(Orders orders);
    Orders getorderbyorderid(Integer order_id);
    List<Orders> getordersByuserid(Integer user_id);
    List<Orders> getorders();
}
