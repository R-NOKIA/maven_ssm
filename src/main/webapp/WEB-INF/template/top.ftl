<#macro top index>
<script baseUrl="${basePath}" src="${basePath}/static/js/user.login.js"></script>
<div class="navbar navbar-inverse navbar-fixed-top animated fadeInDown" style="z-index: 101;height: 41px;">
	  
      <div class="container" style="padding-left: 0px; padding-right: 0px;">
        <div class="navbar-header">
          <button data-target=".navbar-collapse" data-toggle= "collapse" type="button" class="navbar-toggle collapsed">
            <span class="sr-only">导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
	     </div>
	     <div role="navigation" class="navbar-collapse collapse">
	     		<a id="_logo"  href="${basePath}" style="color:#fff; font-size: 24px;" class="navbar-brand hidden-sm">HOS酒店后台管理系统</a>
	          <ul class="nav navbar-nav" id="topMenu">
				<li class="dropdown ${(index==1)?string('active','')}">
					<a aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" class="dropdown-toggle" href="${basePath}/user/index.shtml">
						个人中心<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="${basePath}index.do">个人资料</a></li>
						<li><a href="${basePath}updateSelf.do" >资料修改</a></li>
						<li><a href="${basePath}updatePswd.do" >密码修改</a></li>
						<li><a href="${basePath}mypermission.do">我的权限</a></li>
					</ul>
				</li>	  
				<#--拥有 角色0（超级管理员） ||  2（用户中心） //1 （权限管理）-->
<#--				<@shiro.hasAnyRoles name="root">-->
				<li class="dropdown ${(index==2)?string('active','')}">
					<a aria-expanded="false" aria-haspopup="true"  role="button" data-toggle="dropdown" class="dropdown-toggle" href="${basePath}/member/list.shtml">
						用户中心<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
<#--						<@shiro.hasPermission name="/member/list.shtml">-->
							<li><a href="${basePath}list.do">用户列表</a></li>
<#--						</@shiro.hasPermission>-->
<#--						<@shiro.hasPermission name="/member/online.shtml">-->
							<li><a href="${basePath}online.do">订单管理</a></li>
<#--						</@shiro.hasPermission>-->
					</ul>
				</li>	
<#--				</@shiro.hasAnyRoles>-->
				<#--拥有 角色888888（管理员） ||  100003（权限频道）-->
<#--				<@shiro.hasRole name="root">-->
					<li class="dropdown ${(index==3)?string('active','')}">
						<a aria-expanded="false" aria-haspopup="true"  role="button" data-toggle="dropdown" class="dropdown-toggle" href="${basePath}/permission/index.shtml">
							权限管理<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
<#--							<@shiro.hasPermission name="/role/index.shtml">-->
								<li><a href="${basePath}role_index.do">角色列表</a></li>
<#--							</@shiro.hasPermission>-->
<#--							<@shiro.hasPermission name="/role/allocation.shtml">-->
								<li><a href="${basePath}role_allocation.do">角色分配</a></li>
<#--							</@shiro.hasPermission>-->
<#--							<@shiro.hasPermission name="/permission/index.shtml">-->
								<li><a href="${basePath}permission_index.do">权限列表</a></li>
<#--							</@shiro.hasPermission>-->
<#--							<@shiro.hasPermission name="/permission/allocation.shtml">-->
								<li><a href="${basePath}permission_allocation.do">权限分配</a></li>
<#--							</@shiro.hasPermission>-->
						</ul>
					</li>	
<#--				</@shiro.hasRole>-->
				<li>
					<a class="dropdown-toggle" href="#" target="_blank">
						本项目介绍<span class="collapsing"></span>
					</a>
				</li>
	          </ul>
	           <ul class="nav navbar-nav  pull-right" >
				<li class="dropdown ${(index==10)?string('active','')}" style="color:#fff;">
					<a aria-expanded="false" aria-haspopup="true"  role="button" data-toggle="dropdown"  
<#--						<@shiro.user>-->
							onclick="location.href='${basePath}/user/index.shtml'" href="${basePath}index.do" class="dropdown-toggle qqlogin" >
							${token.username?default('阿西吧')}<span class="caret"></span></a>
							<ul class="dropdown-menu" userid="${token.id}">
								<li><a href="${basePath}index.do">个人资料</a></li>
								<li><a href="${basePath}mypermission.do">我的权限</a></li>
								<li><a href="javascript:void(0);" onclick="logout();">退出登录</a></li>
							</ul>
<#--						</@shiro.user>-->
				</li>	
	          </ul>
	          <style>#topMenu>li>a{padding:10px 13px}</style>
	    </div>
  	</div>
</div>
</#macro>
