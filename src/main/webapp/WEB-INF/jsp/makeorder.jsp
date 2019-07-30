<%@ page contentType="text/html;charset=utf-8"%>
<html lang="en">
<head>
<title>创建订单</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/images/favicon.ico" />
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/static/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" /><!-- Pop-up -->
<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

				<div id="small-dialog" class="mfp-hide w3ls_small_dialog wthree_pop">		
					<div class="agileits_modal_body">
						<iframe src=""></iframe>
					</div>
				</div>
				<div class="header">
            
					<h1><a href="${pageContext.request.contextPath}/user/toindex.do"><p style="color:rgb(128, 83, 16)">Hotel Order System</p></a></h1>
				</div>
				
 

<form action="${pageContext.request.contextPath}/order/add.do">
<div class="container main">
	<!--中间-->
	<div class="row">
		
		        <div id="my">
					创建订单
				</div>
				<div id="hname">
					请填写下面表
				</div>
				<div id="hkind">
					<div class="bed">
							<p style="font-size: 16px;">房型</p>
							<form>
								<input type="radio" name="bedkind" value="single">单人间 &nbsp&nbsp&nbsp
								<input type="radio" name="bedkind" value="double">双人间 &nbsp&nbsp&nbsp
								<input type="radio" name="bedkind" value="kingsize">大床房 &nbsp&nbsp&nbsp
								<input type="text" name="roomtype" id="roomtype" class="form-control">
							</form>
					</div>
				</div>
				<div id="oinfo">
					<div class="rnum">
							<p style="font-size: 16px;">酒店名</p>
							<input style="width:150px" type="text" name="hotel" id="name" class="form-control">
					</div>
					<div class="rnum">
							<p style="font-size: 16px;">入住人</p>
							<input style="width:150px" type="text" name="name" id="name" class="form-control" placeholder="入住人姓名">
					</div>
					<div class="rnum">
							<p style="font-size: 16px;">手机</p>
							<input style="width:150px" type="text" name="telphone" id="name" class="form-control" placeholder="用于接收预定信息">
					</div>
					<div class="rnum">
							<p style="font-size: 16px;">入住时间</p>
							<input style="width:150px" type="text" name="time" id="name" class="form-control">
					</div>
				</div>
			    <div id="hkind">
						<div class="bed">
								<p style="font-size: 16px;">发票</p>
								<p style="font-size: 10px;">请到酒店前台索取发票</p>
						</div>
				</div>
				
				<p id="submit">
					<input style="margin-top: 10px" type="submit" value="Submit"  class="btn btn-border">
				</p>
	
				</div>
				
	</div>
</form>
</div>
<div id="footer" class="mar-t50" style="width:30px;">
	<div class="runoob-block">
		<div class="runoob cf">
			<dl>
				<dt>
					网站导航
				</dt>
				<dd>
					<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
					</dd>
				<dd>
					<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
					</dd>
				<dd>
					<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
					</dd>
				<dd>
					<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
					</dd>
			</dl>
			<dl>
					<dt>
							网站导航
						</dt>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
			</dl>
			<dl>
					<dt>
							网站导航
						</dt>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
			</dl>
			<dl>
					<dt>
							网站导航
						</dt>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
						<dd>
							<a target="_blank" href="" style="margin-left: -45px;">Hotel</a>
							</dd>
			</dl>
			<div class="search-share">
				<div class="app-download">
					<div>
						<strong>关注我们</strong>
					</div>
				</div>
				<div class="share">
						<img width="128" height="128" src="${pageContext.request.contextPath}/static/images/code.png">
				</div>
			</div>
		</div>
	</div>
	<div class="w-1000 copyright">
			Copyright © 2013-2019 Hotel Order System  HOS.com All Rights Reserved. 备案号：闽ICP备15012807号-1
	</div>
</div>
</body>
</html>