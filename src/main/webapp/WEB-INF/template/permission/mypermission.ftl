<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8" />
		<title>我的权限  —个人中心</title>
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
        <script  src="${basePath}/static/js/common/bootstrap/bootstrap-treeview.js"></script>
        <script  src="${basePath}/static/js/shiro.demo.js"></script>
	</head>
	<body data-target="#one" data-spy="scroll">
		
		<@_top.top 1/>
		<div class="container" style="padding-bottom: 15px;min-height: 300px; margin-top: 40px;">
			<#--row-->
			<div class="row">
				<@_left.user 2/>
				<div class="col-md-10">
					<h2>我的权限</h2>
					<hr>
					<div id="getPermissionTree" >loding... ...</div>
				</div>
			</div>
			<#--/row-->
		</div>

		<script >
			$(function(){
				//加载 permission tree data
				var load = layer.load();
				$.post("${basePath}getPermissionTree.do",{},function(data){
					layer.close(load);
					if(data && !data.length){
						return $("#getPermissionTree").html('<code>您没有任何权限。只有默认的个人中心。</code>'),!1;
					}
					$('#getPermissionTree').treeview({
			          levels: 1,//层级
			          color: "#428bca",
			          nodeIcon: "glyphicon glyphicon-user",
			          showTags: true,//显示数量
			          data: data//数据
			        });
				},'json');
			});
		</script>
	</body>
</html>