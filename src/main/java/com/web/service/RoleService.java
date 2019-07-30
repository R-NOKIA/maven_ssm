package com.web.service;

import com.web.model.Role;
import org.springframework.stereotype.Service;

@Service
public interface RoleService {


    public void createRole(Role role);
    public void deleteRole(Long roleId);

    public Role findOne(String roleName);

    /**
     * 添加角色-权限之间关系
     * @param roleId
     * @param permissionIds
     */
    public void correlationPermissions(Long roleId, Long... permissionIds);

    /**
     * 移除角色-权限之间关系
     * @param roleId
     * @param permissionIds
     */
    public void uncorrelationPermissions(Long roleId, Long... permissionIds);

}
