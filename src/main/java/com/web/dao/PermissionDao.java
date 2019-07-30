package com.web.dao;

import com.web.model.Permission;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PermissionDao {

    public void createPermission(Permission permission);

    public void deletePermission(Long permissionId);

    public List<Permission> getAllPermission();
}
