<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8" />
		<title>订单管理</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<link   rel="icon" href="${basePath}/favicon.ico" type="image/x-icon" />
		<link   rel="shortcut icon" href="${basePath}/favicon.ico" />
		<link href="${basePath}/static/js/common/bootstrap/3.3.5/css/bootstrap.min.css?${_v}" rel="stylesheet"/>
		<link href="${basePath}/static/css/common/base.css?${_v}" rel="stylesheet"/>
		<script  src="${basePath}/static/js/common/jquery/jquery1.8.3.min.js"></script>
		<script  src="${basePath}/static/js/common/layer/layer.js"></script>
		<script  src="${basePath}/static/js/common/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script  src="${basePath}/static/js/shiro.demo.js"></script>
		<script >
<#--			<@shiro.hasPermission name="/member/changeSessionStatus.shtml">-->
			$(function(){
				$("a[v=onlineDetails]").on('click',function(){
					var self = $(this);
					var text = $.trim(self.text());
					var index = layer.confirm("确定"+ text +"？",function(){
						changeSessionStatus(self.attr('sessionId'),self.attr('status'),self);
						layer.close(index);
					});
				});
			});
			//改变状态
			function changeSessionStatus(sessionIds,status,self){
				status = !parseInt(status);
				//loading
				var load = layer.load();
				$.post("${basePath}/member/changeSessionStatus.shtml",{status:status,sessionIds:sessionIds},function(result){
					layer.close(load);
					if(result && result.status == 200){
						return self.text(result.sessionStatusText),
									self.attr('status',result.sessionStatus),
										self.parent().prev().text(result.sessionStatusTextTd);
										layer.msg('操作成功'),!1;
					}else{
						return layer.msg(result.message,function(){}),!1;
					}		
				},'json');
			}
<#--			</@shiro.hasPermission>-->
			
		</script>
	</head>
	<body data-target="#one" data-spy="scroll">
		
		<@_top.top 2/>
		<div class="container" style="padding-bottom: 15px;min-height: 300px; margin-top: 40px;">
			<div class="row">
				<@_left.member 2/>
				<div class="col-md-10">
					<h2>订单管理</h2>
					<hr>
					<form method="post" action="" id="formId" class="form-inline">

					<hr>
					<table class="table table-bordered">
						<tr>
							<th>订单ID</th>
							<th>昵称</th>
							<th>电话</th>
							<th>酒店</th>
							<th>类型</th>
							<th>时间</th>
							<th>操作</th>
						</tr>
						<#if list?exists && list?size gt 0 >
							<#list list as it>
								<tr>
									<td>${it.order_id?default('未设置')}</td>
									<td>${it.name?default('未设置')}</td>
									<td>${it.telphone?default('未设置')}</td>
									<td>${it.hotel}</td>
									<td>${it.roomtype}</td>
									<td>${(it.time)}</td>
									<td>
										<a href="javascript:deleteById([${it.user_id}]);">删除</a>
									</td>
								</tr>
							</#list>
						<#else>
							<tr>
								<td class="center-block" callspan="4">没有用户</td>
							</tr>
						</#if>
						
					</table>
				</div>
			</div><#--/row-->
		</div>
			
	</body>
</html>