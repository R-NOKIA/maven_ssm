package com.web.service;

import com.web.model.AUser;
import org.springframework.stereotype.Service;

import javax.xml.registry.infomodel.User;
import java.util.Set;
@Service
public interface AUserService {
    /**
     * 删除用户
     * @param id
     */
    public void deleteUser(Long id);

    /**
     * 创建用户
     * @param user
     */
    public void createUser(AUser user);

    /**
     * 修改密码
     * @param userId
     * @param newPassword
     */
    public void changePassword(Long userId, String newPassword);

    /**
     * 修改用户名
     * @param user
     */
    public void changeUsername(AUser user);

    /**
     * 添加用户-角色关系
     * @param userId
     * @param roleIds
     */
    public void correlationRoles(Long userId, Long... roleIds);


    /**
     * 移除用户-角色关系
     * @param userId
     * @param roleIds
     */
    public void uncorrelationRoles(Long userId, Long... roleIds);

    /**
     * 根据用户名查找用户
     * @param username
     * @return
     */
    public AUser findByUsername(String username);

    /**
     * 根据用户名查找其角色
     * @param username
     * @return
     */
    public Set<String> findRoles(String username);

    /**
     * 根据用户名查找其权限
     * @param username
     * @return
     */
    public Set<String> findPermissions(String username);

    public void uncorrelationRoleAll(Long userId);

    public AUser findOne(Long userId);
}
