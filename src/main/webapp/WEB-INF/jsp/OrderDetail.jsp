<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>订单详情</title>
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
<div id="small-dialog" class="mfp-hide w3ls_small_dialog wthree_pop"></div>
	<div class="header">
        <h1><a href="${pageContext.request.contextPath}/user/toindex.do"><p style="color:rgb(128, 83, 16)">Hotel Order System</p></a></h1>
	</div>
<div class="container main">
	<!--中间-->
	<div class="row">
		
		        <div id="my">
					订单详情
				</div>
				<div id="hname">
					长温酒店
				</div>
				<div>
						<div id="pre-list">
							<ul>
								<li class="name_li">
									<label>姓名：<div id="name" class="pre_option">${order.name}</div></label>
								</li>
								<li class="name_li">
									<label>手机：<div id="name" class="pre_option">${order.telphone}</div></label>
								</li>
								<li class="name_li">
									<label>房型：<div id="name" class="pre_option">${order.roomtype}</div></label>
								</li>
								<li class="name_li">
									<label>时间:<div id="name" class="pre_option">${order.time}</div></label>
								</li>
								<li class="name_li">
									<label>价格：<div id="name" class="pre_option">${money}</div></label>
								</li>
							</ul>
						</div>
				
	</div>
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
					<div style="margin-left: -10px;">
						<strong>关注我们</strong>
					</div>
				</div>
				<div class="share">
						<img width="100" height="100" src="${pageContext.request.contextPath}/static/images/code.png">
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