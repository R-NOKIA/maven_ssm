<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<headlang="en">
    <meta charset="UTF-8">
    <title></title>
    <!--引入相关css,js文件-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/stylel.css">
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/npm.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/common.js" ></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" >
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.js"></script>
    <!--设置背景图以及按钮的样式等-->
    <style>
        body{background: url(${pageContext.request.contextPath}/static/images/time.jpg)no-repeat;background-size:cover;font-size: 16px;   font-family: 'Helvetica', 'Arial', sans-serif;}
        .form{
            background: rgba(255,255,255,0.4);
            padding: 50px;
            padding-left: 40px;
            padding-right: 40px;
            margin-top:0px;
        }
        .starter
  {
      padding: 150px 150px;
      text-align: center;
  }
  .bubbly-button {
  font-family: 'Helvetica', 'Arial', sans-serif;
  display: inline-block;
  font-size: 1em;
  padding: 5px 5px;
  margin-top: 10px;
  margin-bottom: 10px;
  -webkit-appearance: none;
  appearance: none;
  background-color:#a6c4cc;
  color: #fff;
  border-radius: 4px;
  border: none;
  cursor: pointer;
  position: relative;
  transition: transform ease-in 0.1s, box-shadow ease-in 0.25s;
  box-shadow: 0 2px 25px rgba(93, 135, 173, 0.5);
  margin-left: 120px;
  margin-top: 10px;
}
.text-right
{
  font-size: 12px;
}
.active {
	background-color:#eaece8;
	color: black;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: #77827c;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 14px;
}

li a:hover {
	display: block;
	background-color:white;
	text-decoration: none;
	color: black;
}

    </style>
</head>
<body>
    <ul>
        <li><a class href="#home">HOS</a></li>
        <li><a href="#news" class="active">Sign in</a></li>
        <li><a href="${pageContext.request.contextPath}/user/toregister.do" >Register</a></li>
        <li><a href="#about">Retrive/modify password</a></li>
        </ul>
        
                <div class="containers1">
                        <div class="starter">
                                <h1 class="hh">Welcome to Hotel Order System</h1>
                                <p class="lead">login your name and password</p> 
                        </div>
                    </div>
<!--表单部分-->
   <div class="container" style="margin-top: -100px;">
       <form class="col-sm-offset-4 col-sm-4 col-sm-offset-4 form form-horizontal "  id="login_form">
           <div class="form-group">
             <label for="username"class="col-sm-2 control-label">账&nbsp;号</label>
             <div class="col-sm-10">
                 <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名">
             </div>
           </div>
 
           <div class="form-group row">
             <label for="password" class="col-sm-2 control-label col-form-label" >密&nbsp;码</label>
             <div class="col-sm-10">
                 <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" maxlength="6" onkeyup="this.value=this.value.replace(/\D/g,'')" />
             </div>
           </div>
           <input type="submit"class="bubbly-button btn-defult center-block" value="登&nbsp;&nbsp;录"></input>
            <div class="text-right">
                <a href="${pageContext.request.contextPath}/user/toregister.do" >注册新账号</a>
            </div>
         </form>
   </div>
 <!--设置输入要求限制--->
   <script type="text/javascript">
    $.validator.setDefaults( {
      submitHandler: function () {
          var username=document.getElementById("username").value
          var password=document.getElementById("password").value
        $.post("${pageContext.request.contextPath}/login.do",{username:username,password:password},function (res) {

        }).success(function (res) {
            if(res=="user"&&res!=null){
                window.location.href="${pageContext.request.contextPath}/user/test.do"
            }else if(res=="fail") {

            } else {
                window.location.href="${pageContext.request.contextPath}/toadmin.do"
            }
        })
      }
    } );
    $( document ).ready( function () {
      $( "#login_form" ).validate( {
        rules: {
            username: {
          required: true,
          minlength: 2
        },
          password: {
            required: true,
            minlength: 5
          },
          agree: "required"
        },
        messages: {
            username: {
          required: "Please enter a username",
          minlength: "Your username must consist of at least 2 characters"
        }, 
          password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 5 characters long"
          },
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
          // Add the `invalid-feedback` class to the error element
          error.addClass( "invalid-feedback" );
          if ( element.prop( "type" ) === "checkbox" ) {
            error.insertAfter( element.next( "label" ) );
          } else {
            error.insertAfter( element );
          }
        },
        highlight: function ( element, errorClass, validClass ) {
          $( element ).addClass( "is-invalid" ).removeClass( "is-valid" );
        },
        unhighlight: function (element, errorClass, validClass) {
          $( element ).addClass( "is-valid" ).removeClass( "is-invalid" );
        }
      } );
    } );
  </script>
</body>
</html>