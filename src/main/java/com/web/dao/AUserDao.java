package com.web.dao;

import com.web.model.AUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import javax.xml.registry.infomodel.User;
import java.util.Set;

@Repository
public interface AUserDao {

    public void createUser(AUser user);
    public void updateUser(AUser user);
    public void deleteUser(Long userId);

    public void correlationRoles(@Param("userId") Long userId,@Param("roleIds") Long... roleIds);
    public void uncorrelationRoles(@Param("userId")Long userId,@Param("roleIds") Long... roleIds);
    public void uncorrelationRoleAll(@Param("userId")Long userId);

    AUser findOne(Long userId);

    AUser findByUsername(String username);

    Set<String> findRoles(String username);

    Set<String> findPermissions(String username);
}
