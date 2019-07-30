package com.web.service.impl;

import com.web.dao.AUserDao;
import com.web.dao.AUserDao;
import com.web.model.AUser;
import com.web.service.AUserService;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.registry.infomodel.User;
import java.util.Set;

@Service("AUserService")
public class AUserServiceImpl implements AUserService {

    @Autowired
    private AUserDao auserDao ;

    @Override
    public void uncorrelationRoleAll(Long userId) {
        auserDao.uncorrelationRoleAll(userId);
    }

    @Override
    public AUser findOne(Long userId) {
        AUser auser=auserDao.findOne(userId);
        return auser;
    }

    @Override
    public void deleteUser(Long id) {
        auserDao.deleteUser(id);
    }

    /**
     * 创建用户
     * @param auser
     */
    public void createUser(AUser auser) {
        auserDao.createUser(auser);
    }

    /**
     * 修改密码
     * @param userId
     * @param newPassword
     */
    public void changePassword(Long userId, String newPassword) {
        AUser auser =auserDao.findOne(userId);
        auser.setPassword(newPassword);
        auserDao.updateUser(auser);
    }

    /**
     * 修改用户
     * @param auser
     */
    @Override
    public void changeUsername(AUser auser) {
        auserDao.updateUser(auser);
    }

    /**
     * 添加用户-角色关系
     * @param userId
     * @param roleIds
     */
    public void correlationRoles(Long userId, Long... roleIds) {
        auserDao.correlationRoles(userId, roleIds);
    }


    /**
     * 移除用户-角色关系
     * @param userId
     * @param roleIds
     */
    public void uncorrelationRoles(Long userId, Long... roleIds) {
        auserDao.uncorrelationRoles(userId, roleIds);
    }

    /**
     * 根据用户名查找用户
     * @param username
     * @return
     */
    public AUser findByUsername(String username) {
        return auserDao.findByUsername(username);
    }

    /**
     * 根据用户名查找其角色
     * @param username
     * @return
     */
    public Set<String> findRoles(String username) {
        return auserDao.findRoles(username);
    }

    /**
     * 根据用户名查找其权限
     * @param username
     * @return
     */
    public Set<String> findPermissions(String username) {
        return auserDao.findPermissions(username);
    }

}
