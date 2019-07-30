<#macro user index>
<div id="one" class="col-md-2">
	<ul data-spy="affix" class="nav nav-list nav-tabs nav-stacked bs-docs-sidenav dropdown affix" style="top: 100px; z-index: 100;">
	  <li class="${(index==1)?string('active',' ')}">
	      <a href="${basePath}index.do">
	    	 <i class="glyphicon glyphicon-chevron-right"></i>个人资料
	      </a>
	       <ul class="dropdown-menu" aria-labelledby="dLabel" style="margin-left: 160px; margin-top: -40px;">
              <li><a href="${basePath}updateSelf.do">资料修改</a></li>
              <li><a href="${basePath}updatePswd.do">密码修改</a></li>
          </ul>
	  </li>
	  <li class="${(index==2)?string('active',' ')} dropdown">
	      <a href="${basePath}mypermission.do">
	    	 <i class="glyphicon glyphicon-chevron-right"></i>我的权限
	      </a>
<#--		  freemaker-->
	  </li>
	</ul>
</div>
</#macro>
<#macro member index>
<#--	<@shiro.hasAnyRoles name='root,userroot'>-->
		<div  id="one" class="col-md-2">
			<ul data-spy="affix" class="nav nav-list nav-tabs nav-stacked bs-docs-sidenav dropdown affix" style="top: 100px; z-index: 100;">
			  <li class="${(index==1)?string('active',' ')}">
			      <a href="${basePath}list.do">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>用户列表
			      </a>
			  </li>
			  <li class="${(index==2)?string('active',' ')} dropdown">
			      <a href="${basePath}online.do">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>订单管理
			      </a>
			  </li>
			</ul>
		</div>
<#--	</@shiro.hasAnyRoles>-->
</#macro>
<#macro role index>
<#--	<@shiro.hasAnyRoles name='root,admin'>-->
		<div id="one" class="col-md-2">
			<ul data-spy="affix" class="nav nav-list nav-tabs nav-stacked bs-docs-sidenav dropdown affix" style="top: 100px; z-index: 100;">
			 
<#--			 <@shiro.hasPermission name="/role/index.shtml">-->
			  <li class="${(index==1)?string('active',' ')}">
			      <a href="${basePath}role_index.do">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>角色列表
			      </a>
			  </li>
<#--			  </@shiro.hasPermission>-->
<#--			 <@shiro.hasPermission name="/role/allocation.shtml">-->
			  <li class="${(index==2)?string('active',' ')} dropdown">
			      <a href="${basePath}/role_allocation.do">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>角色分配
			      </a>
			  </li>
<#--			  </@shiro.hasPermission>-->
<#--			  <@shiro.hasPermission name="/permission/index.shtml">-->
			  <li class="${(index==3)?string('active',' ')} dropdown">
			      <a href="${basePath}/permission_index.do">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>权限列表
			      </a>
			  </li>
<#--			  </@shiro.hasPermission>-->
<#--			  <@shiro.hasPermission name="/permission/allocation.shtml">-->
			  <li class="${(index==4)?string('active',' ')} dropdown">
			      <a href="${basePath}/permission_allocation.do">
			    	 <i class="glyphicon glyphicon-chevron-right"></i>权限分配
			      </a>
			  </li>
<#--			  </@shiro.hasPermission>-->
			</ul>
		</div>
<#--	</@shiro.hasAnyRoles>-->
</#macro>