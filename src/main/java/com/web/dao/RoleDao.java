package com.web.dao;

import com.web.model.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleDao {

    public void createRole(Role role);
    public void deleteRole(Long roleId);

    public void correlationPermissions(@Param("roleId") Long roleId, @Param("permissionIds") Long... permissionIds);
    public void uncorrelationPermissions(@Param("roleId") Long roleId, @Param("permissionIds") Long... permissionIds);

    //需要一个list
    public Role findOne(String roleName);

    public List<Role> getAllRole();


}
