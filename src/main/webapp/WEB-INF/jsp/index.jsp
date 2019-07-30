<%@ page import="com.web.model.Orders" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.List" %>
<%@ page import="com.web.model.Users" %>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>用户信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />--%>
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/images/favicon.ico" />
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/static/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" /><!-- Pop-up -->
<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
<body>

				<div id="small-dialog" class="mfp-hide w3ls_small_dialog wthree_pop">		
					<div class="agileits_modal_body">
						<iframe src=""></iframe>
					</div>
				</div>
				<div class="header">
            
					<h1><a href="${pageContext.request.contextPath}/order/tomakeorder.do"><p style="color:rgb(128, 83, 16)">Hotel Order System</p></a></h1>
				</div>
				
 


<div class="container main">
	<!--中间-->
	<div class="row">
		
		        <div id="my">
					我的首页
				</div>
			    <input id="tab1" type="radio" name="tabs" checked>
				<label for="tab1">个人信息</label>
				<input id="tab2" type="radio" name="tabs">
				<label for="tab2">修改信息</label>
				<input id="tab3" type="radio" name="tabs">
				<label for="tab3">订单</label>
				<input id="tab4" type="radio" name="tabs">
				<label for="tab4">优惠券</label>
				<input id="tab5" type="radio" name="tabs">
				<label for="tab5">电子发票</label>
				<input id="tab6" type="radio" name="tabs">
				<label for="tab6">积分</label>
				<input id="tab7" type="radio" name="tabs">
				<label for="tab7">应用中心</label>
				<label for="tab8">收藏</label>
				<input id="tab8" type="radio" name="tabs">
				<section id="content1">
						<div id="pre-list">
							<ul>
								<li class="name_li">
									<label>姓名：<div id="name" class="pre_option">${user.name}</div></label>
								</li>
								<li class="name_li">
									<label>性别：<div id="name" class="pre_option">${user.sex}</div></label>
								</li>
								<li class="name_li">
									<label>昵称：<div id="name" class="pre_option">${user.nickname}</div></label>
								</li>
								<li class="name_li">
									<label>手机：<div id="name" class="pre_option">${user.telphone}</div></label>
								</li>
								<li class="name_li">
									<label>邮箱：<div id="name" class="pre_option">${user.email}</div></label>
								</li>
								<li class="name_li">
									<label>现居地：<div id="name" class="pre_option">${user.homeplace}</div></label>
								</li>
							</ul>
						</div>
				</section>

				<section id="content2">
					<form action="${pageContext.request.contextPath}/user/update.do" method="post">
						<input style="width:400px" type="text" name="name" id="name" class="form-control" placeholder="Your Name">
							<br>
							<br>
							<input style="width:400px" type="email" name="email" placeholder="Email" class="form-control">
							<br>
							<br>
							<input style="width:400px" type="text" name="telphone" placeholder="Telphone" class="form-control">
							<br>
							<br>
							<input style="width:400px" type="text" name="nickname" placeholder="Nick name" class="form-control">
							<br>
							<br>
							<p id="submit">
								<input type="submit" value="Submit" class="btn btn-border">
							</p>
					</form>
				</section>

				<section id="content3">
						<div id="orderl">
								订单列表
						</div>
						<div>
							<%
								String path=request.getContextPath();
								Users users=(Users)session.getAttribute("user");

								for (Orders i : users.getOrders()){
									Random random=new Random();
									int a=random.nextInt(300);
									out.print("<div class=\"order-item clearfix\">\n" +
											"\t\t\t\t\t\t\t\t\t<div class=\"order-img\">\n" +
											"\t\t\t\t\t\t\t\t\t\t<a href=\""+path+"/order/toOrderDetail.do?id="+i.getOrder_id()+"&money="+a+"\"><img width=\"60px\" height=\"60px\" src=\""+path+"/static/images/hotel1.png\"></a>\n" +
											"\t\t\t\t\t\t\t\t\t</div>\n" +
											"\t\t\t\t\t\t\t\t\t<div class=\"order-info\">\n" +
											"\t\t\t\t\t\t\t\t\t\t<div class=\"info-box\">\n" +
											"\t\t\t\t\t\t\t\t\t\t\t<a href=\" \" target=\"_blank\">\n" +
											"\t\t\t\t\t\t\t\t\t\t\t<p class=\"order-title\">"+i.getHotel()+"</p></a>\n" +
											"\t\t\t\t\t\t\t\t\t\t\t<p class=\"info\">有效期至："+i.getTime()+"</p>\n" +
											"\t\t\t\t\t\t\t\t\t\t\t<p class=\"info\">数量：1</p>\n" +
											"\t\t\t\t\t\t\t\t\t\t\t\n" +
											"\t\t\t\t\t\t\t\t\t\t</div>\n" +
											"\t\t\t\t\t\t\t\t\t</div>\n" +
											"\t\t\t\t\t\t\t\t\t<div class=\"order-price\">总价：￥"+a+"</div>\n" +
											"\t\t\t\t\t\t\t\t\t<div class=\"order-status\">待评价</div>\n" +
											"\t\t\t\t\t\t\t\t</div>\n" +
											"\t\t\t\t\t\t\t\t<hr>");
								}
							%>
						</div>
					<!--  -->	
				</section>
				<section id="content4">
						
				</section>
				<section id="content5">
						
				</section>
				<section id="content6">
						
				</section>
				<section id="content7">
						
				</section>
				<section id="content8">
						
				</section>
		        
				
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