package com.web.Unitl;


import com.web.model.AUser;
import com.web.service.AUserService;
import com.web.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

public class MyRealm extends AuthorizingRealm {
    @Autowired
    private AUserService auserService;
    @Override
    /**
     * 权限验证调用的方法
     */
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("调用doGetAuthorizationInfo权限验证调用的方法");
        String username=(String)principalCollection.getPrimaryPrincipal();
        if(username==null){
            System.out.println("未登陆");
        }
        SimpleAuthorizationInfo simpleAuthenticationInfo=
                new SimpleAuthorizationInfo();
        Set<String> roles=new HashSet<String>();
        Set<String> stringPermissions=new HashSet<String>();

        roles.addAll(auserService.findRoles(username));
        stringPermissions.addAll(auserService.findPermissions(username));

        simpleAuthenticationInfo.setRoles(roles);
        simpleAuthenticationInfo.setStringPermissions(stringPermissions);
        return simpleAuthenticationInfo;
    }

    @Override
    /**
     * 身份验证调用的方法
     */
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("调用doGetAuthenticationInfo身份验证调用的方法");
        UsernamePasswordToken usernamePasswordToken=(UsernamePasswordToken)authenticationToken;
        String userName=usernamePasswordToken.getUsername();
        AUser auser= auserService.findByUsername(userName);
        if(null==auser){
            throw new UnknownAccountException();
        }
        SimpleAuthenticationInfo simpleAuthenticationInfo=
                new SimpleAuthenticationInfo(auser.getUsername(),auser.getPassword().toCharArray(),getName());
        return simpleAuthenticationInfo;
    }
}
