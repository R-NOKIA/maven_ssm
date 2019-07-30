package com.web.service.impl;

import com.web.dao.Orderdao;
import com.web.model.Orders;
import com.web.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("orderService")
public class OrderServiceImpl implements OrderService
{
    @Autowired
    private Orderdao orderdao;
    @Override
    public int insertorder(Orders order) {
        if (orderdao.insertorder(order)>0)
        {
            return 1;
        }
        else
            return 0;
    }

    @Override
    public int deleteorder(Integer order_id) {
        if (orderdao.deleteorder(order_id)>0)
        {
            return 1;
        }
        else
            return 0;
    }

    @Override
    public int updateorders(Orders orders) {
        if (orderdao.updateorders(orders)>0)
        {
            return 1;
        }
        else
            return 0;
    }

    @Override
    public Orders getorderbyorderid(Integer order_id) {
        return orderdao.getorderbyorderid(order_id);
    }

    @Override
    public List<Orders> getordersByuserid(Integer user_id) {
        return orderdao.getordersByuserid(user_id);
    }

    @Override
    public List<Orders> getorders() {
        return orderdao.getorders();
    }
}
