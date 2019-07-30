package com.web.service;

import com.web.model.Permission;
import org.springframework.stereotype.Service;

@Service
public interface PermissionService {
    public void createPermission(Permission permission);
    public void deletePermission(Long permissionId);
}
