<%@ page contentType="text/html;charset=utf-8"%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Hotel Order System 七日速成工作室</title>
  <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/images/jiudian.png" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery-1.12.3.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/TweenMax.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/index.js" type="text/javascript"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.9.1.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.immersive-slider.js"></script>
  <link href='${pageContext.request.contextPath}/static/css/immersive-slider.css' rel='stylesheet' type='text/css'>
  <meta name="description" content="Bootstrap navbar Example. This example includes rendering of Social buttons.">
  <link href="${pageContext.request.contextPath}/static/css/bootstrap-2.0.3.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/static/css/example-fixed-layout.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/al.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/1.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/2.css" rel="stylesheet" type="text/css">
<style type="text/css">
  .socials {
  padding: 10px;
  }
  .nav
  {
     z-index:99999; 
  }
  .carousel
  {
    margin-top: 500px;
  }
  </style>
  <style> 
    html {
      height: 100%;
    }
    body {
      background: #f3f3f3;
      padding: 0;
      text-align: center;
      font-family: 'open sans';
      margin: 0;
      height: 100%;
    }
    .wrapper {
    	height: auto !important;
    	height: 100%;
    	margin: 0 auto; 
    	overflow: hidden;
    }
    a {
      text-decoration: none;
    }
    h1, h2 {
      width: 100%;
      float: left;
    }
    h1 {
      margin-top: 25px;
      color: #000;
      margin-bottom: 5px;
      font-size: 50px;
      letter-spacing: -4px;
    }
    h2 {
      color: #444;
      font-weight: 100;
      margin-top: 0;
      margin-bottom: 10px;
    } 
    .pointer {
      color: #9b59b6;
      font-family: 'Pacifico', cursive;
      font-size: 30px;
      margin-top: 15px;
    }
    pre {
      margin: 80px auto;
    }
    pre code {
      padding: 35px;
      border-radius: 5px;
      font-size: 15px;
      background: rgba(0,0,0,0.1);
      border: rgba(0,0,0,0.05) 5px solid;
      max-width: 500px;
    }
    .main {
      float: left;
      width: 100%;
      margin: 0 auto;
      background: #161923;
    }  
    .main h1 {
      padding:20px 50px;
      float: left;
      width: 100%;
      font-size: 90px;
      box-sizing: border-box;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      font-weight: 100;
      color: black;
      margin: 0;
      margin-top: 70px;
      font-family: 'Playfair Display';
      letter-spacing: -1px;
    }
    .main h1.demo1 {
      background: #1ABC9C;
    }  
    .reload.bell {
      font-size: 12px;
      padding: 20px;
      width: 45px;
      text-align: center;
      height: 47px;
      border-radius: 50px;
      -webkit-border-radius: 50px;
      -moz-border-radius: 50px;
    }  
    .reload.bell #notification {
      font-size: 25px;
      line-height: 140%;
    }
    .reload, .btn{
      display: inline-block;
      border: 4px solid #A2261E;
      border-radius: 5px;
      -moz-border-radius: 5px;
      -webkit-border-radius: 5px;
      background: #CC3126;
      display: inline-block;
      line-height: 100%;
      padding: 0.7em;
      text-decoration: none;
      color: #fff;
      width: 100px;
      line-height: 140%;
      font-size: 17px;
      font-family: open sans;
      font-weight: bold;
    }
    .reload:hover{
      background: #A2261E;
    }
    .btn {
      width: 200px;
      color: #fff;
      border: none;
      margin-left: 10px;
      background: black;
    }
    .clear {
      width: auto;
    }
    .btn:hover, .btn:hover {
      background: rgba(0,0,0,0.8);
    }
    .btns {
      width: 410px;
      margin: 50px auto;
    }
    .credit {
      text-align: center;
      color: #444;
      padding: 10px;
      margin: 0 0 0 0;
      background: #161923;
      color: #FFF;
      float: left;
      width: 100%;
    }
    .credit a {
      color: #fff;
      text-decoration: none;
      font-weight: bold;
    }  
    .back {
      top: 0;
      left: 0;
      text-align: center;
      display: block;
      padding: 7px;
      width: 100%;
      box-sizing: border-box;
      -moz-box-sizing: border-box;
      -webkit-box-sizing: border-box;
      background: rgba(255, 255, 255, 0.25);
      font-weight: bold;
      font-size: 13px;
      color: #000;
      -webkit-transition: all 200ms ease-out;
      -moz-transition: all 200ms ease-out;
      -o-transition: all 200ms ease-out;
      transition: all 200ms ease-out;
    }
    .back:hover {
      color: black;
      background: rgba(255, 255, 255, 0.5);
    }
    .page_container {
      max-width: 960px;
      margin: 50px auto;
    }
    .header {
      background: white;
      padding-top: 10px;
      margin-bottom: 0;
    }
    .header h1{
      margin-bottom: 0;
      font-size: 45px;
    }
    .header .menu {
      padding-bottom: 10px;
    }
    .benefits {
      color: black;
      height: 100px;
      background: #FFF;
      width: 100%;
      padding: 25px;
      font-size: 40px;
      font-weight: 100;
      float: left;
      box-sizing: border-box;
      -moz-box-sizing: border-box;
      -webkit-box-sizing: border-box;
    }
    .benefits .page_container{
      margin-bottom: 50px;
      margin-top: 0;
    }
    .immersive_slider .is-slide .content h2{
      line-height: 140%;
      font-weight: 100;
      color: white;
      font-weight: 100;
    }
    .immersive_slider .is-slide .content a {
      color: white;
    } 
  .immersive_slider .is-slide .content p{
    float: left;
    font-weight: 100;
    width: 100%;
    font-size: 17px;
    margin-top: 5px;
  }
  .wrapper
  {
    margin-top:38px;
  }
  .kuai
  {
    margin-top: 20px;
    width: 100%;
    height: 200px;
    background-color:#f3f3f3;
    text-align: center;
    font-family:fantasy;
    color: #5a3a2b;
    font-size: 15px;
  }
.dropdown-menu
{
  font-size: 12px;
}
  .aa
  {
    margin: 50px;

  }
.pt
{
  background-color: #e4e1dc;
  width: 100%;
  height: 400px;
  margin-top: 550px;

}
.h
{
  text-align: center;
  margin-top: 10px;
  font-size:8px;
  font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
}
.sm
{
  float: left;
  width: 500px;
  height: 400px;
  background-color: rgba(0,0,0,0.1);
   margin-left: 100px
  
}
.row
{
  margin-top: 50px;
 margin-left:100px;
 
}
.xzw_starSys
{
  margin-left: 800px;
   margin-top: 100px;
}
  </style> 
  <style>
      .aa
      { width:700px;
      }
      .aa ul li
      { position:relative;
          left:650px;width:700px;
           -moz-transition-property:left; 
           -moz-transition-duration:.5s;
            -webkit-transition-property:left;
             -webkit-transition-duration:.5s;
              -o-transition-property:left; 
              -o-transition-duration:.5s;
               transition-property:left; 
               transition-duration:.5s; 
               list-style:none;
               padding: 10px;
      }
      .aa ul li:hover
      {left:580px;}
      .aa ul li:nth-child(2)
      {-moz-transition-timing-function:ease;
          -webkit-transition-timing-function:ease;
          -o-transition-timing-function:ease;
          transition-timing-function:ease;}

          #pt:after{clear: both;}
         .sm ul
         {
           float: left;
           margin-top: -320px;
         }
         .xzw_starSys
         {
           width: 400px;
           height: 300px;
           margin-top:1000px;
           margin-left: 350px;
         }
         .foot
         {
           width:100%;
           height: 100px;
           margin-top: 150px;
           background-color: #000;
         }
     .xzw_starBox{
       margin-left: 13px;
     }
   .zd
   {
     width: 600px;
     height: 400px;
     margin-left: 850px;
     margin-top: -700px;
  
   }
.fotter li{ display:inline;padding: 20px;}
.fotter
{
    margin-left: 800px;
    padding-top: 30px;
}
      </style>
</head>
<body>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
      <ul class="nav">
      <li class="active">
        <a class="brand" href="#">HOS</a>
      </li>
      <li><a href="${pageContext.request.contextPath}/user/tologin.do">登录/注册</a></li>
      <li><a href="#">星级酒店</a></li>
      <li><a href="${pageContext.request.contextPath}/user/tologin.do">后台管理</a></li>
    </ul>
    <ul class="nav">
      <li class="dropdown">
        <a href="#"
              class="dropdown-toggle"
              data-toggle="dropdown">
              搜索
              <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
         <li><a href="#">酒店搜索</a></li>
      <li><a href="#">关键字搜索</a></li>
      <li><a href="#">附近搜索</a></li>
        </ul>
      </li>
    </ul>
    <form class="navbar-search pull-left">
      <input type="text" class="search-query" placeholder="Search">
    </form>
    <ul class="nav pull-right">
      <li class="dropdown">
        <a href="${pageContext.request.contextPath}/user/toindex.do"
              class="dropdown-toggle"
              data-toggle="dropdown">
              个人空间
              <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
         <li class="socials"><!-- Place this tag where you want the +1 button to render -->
    <g:plusone annotation="inline" width="150"></g:plusone>
    </li>
      <li class="socials"><div class="fb-like" data-send="false" data-width="150" data-show-faces="true"></div></li>
      <li class="socials"><a href="https://twitter.com/share" class="twitter-share-button">订单详情</a>
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></li>
        </ul>
      </li>
    </ul>
        </div>
      </div>
    </div>
  <div class="wrapper">
    <div class="main">
      <div class="page_container">
        <div id="immersive_slider">
          <div class="slide" data-blurred="${pageContext.request.contextPath}/static/images/c.jpg">
            <div class="content">
              <h2><a href="http://sc.chinaz.com" target="_blank">BucketListly</a></h2>
              <p>It’s never been easier to watch YouTube on the big screen
              Send your favorite YouTube videos from your Android phone or tablet to TV with the touch of a button. It’s easy. No wires, no setup, no nothing. Find out more here.</p>
            </div>
            <div class="image">
              <a href="http://sc.chinaz.com" target="_blank">
                <img src="${pageContext.request.contextPath}/static/images/bg1.jpg" alt="Slider 1">
              </a>
            </div>
          </div>
          <div class="slide" data-blurred="${pageContext.request.contextPath}/static/images/c.jpg">
            <div class="content">
              <h2>BucketListly Apps</h2>
              <p>It’s never been easier to watch YouTube on the big screen
              Send your favorite YouTube videos from your Android phone or tablet to TV with the touch of a button. It’s easy. No wires, no setup, no nothing. Find out more here.</p>
            </div>
            <div class="image">
             <a href="http://sc.chinaz.com/" target="_blank"> <img src="${pageContext.request.contextPath}/static/images/login.jpg" alt="Slider 1"></a>
            </div>
          </div>
          <div class="slide" data-blurred="${pageContext.request.contextPath}/static/images/c.jpg">
            <div class="content">
              <h2><a href="http://sc.chinaz.com" target="_blank">The Pete Design</a></h2>
              <p>It’s never been easier to watch YouTube on the big screen
              Send your favorite YouTube videos from your Android phone or tablet to TV with the touch of a button. It’s easy. No wires, no setup, no nothing. Find out more here.</p>
            </div>
            <div class="image">
              <a href="http://sc.chinaz.com" target="_blank"><img src="${pageContext.request.contextPath}/static/images/bg.jpg" alt="Slider 1"></a>
            </div>
          </div>    
          <a href="#" class="is-prev">&laquo;</a>
          <a href="#" class="is-next">&raquo;</a>
        </div>
      </div>
  	</div>
  	<script type="text/javascript">
  	  $(document).ready( function() {
  	    $("#immersive_slider").immersive_slider({
  	      container: ".main"
  	    });
  	  });
    </script>
  </div>
  <div class="ws">
   <div class="kuai">
  <h2 style="font-size: 24px;">welcome&nbsp; &nbsp;&nbsp; to&nbsp; &nbsp;&nbsp; HOS</h2>
  <img src="${pageContext.request.contextPath}/static/images/t.png">
  <div class="h">
  <p>Believe&nbsp;that&nbsp;we&nbsp;can&nbsp;give&nbsp;you&nbsp;the&nbsp;best&nbsp;service<p>
      <p>Believe&nbsp;that&nbsp;we&nbsp;can&nbsp;give&nbsp;you&nbsp;the&nbsp;best&nbsp;quality&nbsp;enviroment<p>
          <hr style="height:1px;border:none;border-top:1px solid #555555; width: 55% ; margin-left: 400px;text-align: center" />
</div>
   </div>
     <div class="aa">
          <div class="sm">
              <div class="row">
              <div class="span4">
              <h3>Progress to search the hotel you want to order</h3>
              <div class="progress progress-info progress-striped" style="margin-bottom: 20px;margin-top: 20px">
                    <div class="bar" style="width: 20% ;margin-bottom: 20px">Filter</div>
                  </div>
                  <div class="progress progress-success progress-striped active" style="margin-bottom: 20px;">
                    <div class="bar" style="width: 40%">Keyword Search</div>
                  </div>
                  <div class="progress progress-warning progress-striped" style="margin-bottom:20px;">
                   <div class="bar" style="width: 60%">Nearby Search</div>
                  </div>
                  <div class="progress progress-danger progress-striped active" style="margin-bottom: 20px;">
                    <div class="bar" style="width: 80%">Hotel Search</div>
                  </div>
                </div>
                    </div>
  <ul>
         <li>
         <img src="${pageContext.request.contextPath}/static/images/z.png" width="30px" height="30px">
         </li>
         <li>
              <iframe src="${pageContext.request.contextPath}/static/1.html" style="width: 700px;height: 370px;" ></iframe>
         </li>
       </ul>
         </div>
</div>
</div>
  <div id="trans3DDemo1" class="x">
      <div id="trans3DBoxes1" style="transform: matrix3d(0.728682, 0, 0.684852, -0.000228284, -0.683537, 0.0619544, 0.727282, -0.000242427, -0.0424296, -0.998079, 0.045145, -1.50483e-005, 768, 293, 0, 1); transform-origin: 125px 125px 0px; transform-style: preserve-3d;">
          <div style="opacity: 0.85; transform: translate3d(0px, 0px, 125px);">Front</div>
          <div style="opacity: 0.85; transform: matrix3d(0, 0, 1, 0, 0, 1, 0, 0, -1, 0, 0, 0, -125, 0, 0, 1);" class="left">Left</div>
          <div style="opacity: 0.85; transform: matrix3d(0, 0, -1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 125, 0, 0, 1);" class="right">Right</div>
          <div style="opacity: 0.85; transform: matrix3d(1, 0, 0, 0, 0, 0, 1, 0, 0, -1, 0, 0, 0, -125, 0, 1);" class="top">Top</div>
          <div style="opacity: 0.85; transform: matrix3d(1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0, 0, 0, 125, 0, 1);" class="bottom">Bottom</div>
          <div style="opacity: 0.85; transform: matrix3d(-1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, -125, 1);" class="back">HOS</div>
      </div>
  </div>
  <div class="xzw_starSys">
    <p style="color: #000; margin-left: -60px;margin-bottom: 20px; font-family: Verdana, Geneva, Tahoma, sans-serif;width: 300px;height: 20px;">对酒店进行综合评价</p>
    <div class="xzw_starBox">
          <ul class="star stars">
              <li><a title="1" class="one-star" href="javascript:void(0)">1</a></li>
              <li><a title="2" class="two-stars" href="javascript:void(0)">2</a></li>
              <li><a title="3" class="three-stars" href="javascript:void(0)">3</a></li>
              <li><a title="4" class="four-stars" href="javascript:void(0)">4</a></li>
              <li><a title="5" class="five-stars" href="javascript:void(0)">5</a></li>
          </ul>
      </div>
  </div>
<div class="zd">
<h4 class="description1" style="font-size: 55px; color: #2d1a14;">Who we are?</h4>
<h4 class="description1" style="margin: 20px; color: #9b9b9b;" >Our hotel reservation system will give you the best service. </h4>
  <h4 class="description1" style="margin: 20px;color: #9b9b9b;" > We are a seven-day fast-track studio. </h4>
  <h4 class="description1"  style="margin: 20px ;color: #9b9b9b;">  I hope you can have the best experience here. Here you can choose the hotel you are most satisfied with. 
         </h4>
         <h4 class="description" style="margin: 20px;color: #9b9b9b;" >
            We will provide you with the best guarantee.</h4>
</div>
<div class="">
  <div>
  <div class="foot">
    <div class="fotter">       
      <li><img src="${pageContext.request.contextPath}/static/images/weixin.png"></li>
      <li><img src="${pageContext.request.contextPath}/static/images/qq-copy.png"></li>
      <li><img src="${pageContext.request.contextPath}/static/images/wife.png"></li>
      <li><img src="${pageContext.request.contextPath}/static/images/dianying-.png"></li>
      <li><img src="${pageContext.request.contextPath}/static/images/anzhuo.png"></li>
          </div>
  </div>
  <script src="${pageContext.request.contextPath}/static/js/TweenMax.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/index.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/static/js/bootstrap-dropdown.js"></script>

  <script src="${pageContext.request.contextPath}/static/js/script.js" type="text/javascript"></script>
  <script type="text/javascript">
    (function() {
      var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
      po.src = 'https://apis.google.com/js/plusone.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
  </script>
</body>
</html>
<!--代码结束-->