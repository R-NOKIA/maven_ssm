<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8" />
		<title>用户列表 —个人中心</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<link   rel="icon" href="${basePath}/favicon.ico" type="image/x-icon" />
		<link   rel="shortcut icon" href="${basePath}/favicon.ico" />
		<link href="${basePath}/static/js/common/bootstrap/3.3.5/css/bootstrap.min.css?${_v}" rel="stylesheet"/>
		<link href="${basePath}/static/css/common/base.css?${_v}" rel="stylesheet"/>
		<#--<script  src="${basePath}/static/js/common/jquery/jquery1.8.3.min.js"></script>-->
		<#--<script  src="${basePath}/static/js/common/layer/layer.js"></script>-->
		<script  src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/layer/2.3/layer.js"></script>
		<script  src="${basePath}/static/js/common/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script  src="${basePath}/static/js/shiro.demo.js"></script>
		<script >
			so.init(function(){
				//初始化全选。
				so.checkBoxInit('#checkAll','[check=box]');
<#--				<@shiro.hasPermission name="/member/deleteUserById.shtml">-->
				//全选
				so.id('deleteAll').on('click',function(){
					var checkeds = $('[check=box]:checked');
					if(!checkeds.length){
						return layer.msg('请选择要删除的选项。',so.default),!0;
					}
					var array = [];
					checkeds.each(function(){
						array.push(this.value);
					});
					return deleteById(array);
				});
<#--				</@shiro.hasPermission>-->
			});
<#--			<@shiro.hasPermission name="/member/deleteUserById.shtml">-->
			//根据ID数组，删除
			function deleteById(ids){
				var index = layer.confirm("确定这"+ ids.length +"个用户？",function(){
					var load = layer.load();
					$.post('${basePath}deleteUserById.do',{ids:ids.join(',')},function(result){
						layer.close(load);
						if(result && result.status != 200){
							return layer.msg(result.message,so.default),!0;
						}else{
							layer.msg('删除成功');
							setTimeout(function(){
								$('#formId').submit();
							},1000);
						}
					},'json');
					layer.close(index);
				});
			}
<#--			</@shiro.hasPermission>-->
<#--			<@shiro.hasPermission name="/member/forbidUserById.shtml">-->
<#--			</@shiro.hasPermission>-->
		</script>
	</head>
	<body data-target="#one" data-spy="scroll">
		
		<@_top.top 2></@_top.top>
		<div class="container" style="padding-bottom: 15px;min-height: 300px; margin-top: 40px;">
			<div class="row">
				<@_left.member 1></@_left.member>
				<div class="col-md-10">
					<h2>用户列表</h2>
					<hr>
					<form method="post" action="" id="formId" class="form-inline">
						<div clss="well">
					      <div class="form-group">
					        <input type="text" class="form-control" style="width: 300px;" value="${findContent?default('')}" 
					        			name="findContent" id="findContent" placeholder="输入昵称">
					      </div>
					     <span class=""> <#--pull-right -->
				         	<button type="submit" class="btn btn-primary">查询</button>
<#--				         	<@shiro.hasPermission name="/member/deleteUserById.shtml">-->
				         		<button type="button" id="deleteAll" class="btn  btn-danger">Delete</button>
<#--				         	</@shiro.hasPermission>-->
				         </span>    
				        </div>
					<hr>
					<table class="table table-bordered">
						<tr>
							<th><input type="checkbox" id="checkAll"/></th>
							<th>昵称</th>
							<th>密码</th>
							<th>邮箱</th>
							<th>居住地</th>
							<th>电话</th>
							<th>操作</th>
						</tr>
						<#if list?exists && list?size gt 0 >
							<#list list as it>
								<tr>
									<td><input value="${it.user_id}" check='box' type="checkbox" /></td>
									<td>${it.username?default('未设置')}</td>
									<td>${it.password?default('未设置')}</td>
									<td>${it.email}</td>
									<td>${it.homeplace}</td>
									<td>${it.telphone}</td>
									<td>
<#--										<@shiro.hasPermission name="/member/forbidUserById.shtml">-->
<#--										</@shiro.hasPermission>-->
<#--										<@shiro.hasPermission name="/member/deleteUserById.shtml">-->
										<a href="javascript:deleteById([${it.user_id}]);">删除</a>
<#--										</@shiro.hasPermission>-->
									</td>
								</tr>
							</#list>
						<#else>
							<tr>
								<td class="text-center danger" colspan="6">没有找到用户</td>
							</tr>
						</#if>
					</table>
					<#if list?exists>
						<div class="pagination pull-right">
							${pageHtml}
						</div>
					</#if>
					</form>
				</div>
			</div><#--/row-->
		</div>
			
	</body>
</html>