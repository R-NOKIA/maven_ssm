<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>JQuery-validation demo | Bootstrap</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.js"></script>
	<style>
		   body{background: url(${pageContext.request.contextPath}/static/images/time.jpg)no-repeat;background-size:cover;font-size: 14px;   font-family: 'Helvetica', 'Arial', sans-serif;}
		   .card{
            background: rgba(255,255,255,0.4);
		}
		.form-group
		{
			font-size: 14px;
	
		}
		.container{
			margin-top: 100px;
		}
		.btn {
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
  margin-left: 100px;
  margin-top: 10px;
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
<div>
	
	<div>	
			<ul>
					<li><a class href="#home">HOS</a></li>
					<li><a href="${pageContext.request.contextPath}/user/tologin.do">Sign in</a></li>
					<li><a href="#contact" class="active">Register</a></li>
					<li><a href="#about">Retrive/modify password</a></li>
				  </ul>
				  
	<div class="container">
		<div class="row">
			<div class="col-sm-8 offset-sm-2">

				<div class="card">
					<div class="card-header">
						<h3 class="card-text">Register</h3>
					</div>
					<div class="card-body">
						<form id="signupForm" method="post" class="form-horizontal" action="${pageContext.request.contextPath}/user/register.do">
							<div class="form-group row">
								<label class="col-sm-4 col-form-label" for="firstname" >Name</label>
								<div class="col-sm-6">
									<input type="text" style="font-size: 13px" class="form-control" id="firstname" name="name" placeholder="Name" />
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-4 col-form-label" for="lastname">sex</label>
								<div class="col-sm-6">
									<input type="text" style="font-size: 13px"  class="form-control" id="lastname" name="sex" placeholder="sex" />
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-4 col-form-label" for="username">Username</label>
								<div class="col-sm-6">
									<input type="text" style="font-size: 13px" class="form-control" id="username" name="username" placeholder="Username" />
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-4 col-form-label" for="email">Email</label>
								<div class="col-sm-6">
									<input type="text" style="font-size: 13px" class="form-control" id="email" name="email" placeholder="Email" />
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-4 col-form-label" for="password">Password</label>
								<div class="col-sm-6">
									<input type="password" class="form-control" id="password" name="password" style="font-size: 13px" placeholder="Password"  />
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-4 col-form-label" for="confirm_password">Confirm password</label>
								<div class="col-sm-6">
									<input type="password" class="form-control" id="confirm_password" name="confirm_password" style="font-size: 13px" placeholder="Confirm password" />
								</div>
							</div>

							<div class="form-group row">
								<div class="col-sm-6 offset-sm-4">
									<div class="form-check">
										<input type="checkbox" id="agree" style="font-size: 13px"  name="agree" value="agree" class="form-check-input"/>
										<label class="form-check-label">Please agree to our policy</label>
									</div>
								</div>
							</div>

							<div class="form-group row">
								<div class="col-sm-9 offset-sm-4">
									<input type="submit" class="btn btn-primary" name="signup" value="Sign up"></input>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">

		$( document ).ready( function () {
			$( "#signupForm" ).validate( {
				rules: {
					firstname: "required",
					lastname: "required",
					username: {
						required: true,
						minlength: 2
					},
					password: {
						required: true,
						minlength: 5
					},
					confirm_password: {
						required: true,
						minlength: 5,
						equalTo: "#password"
					},
					email: {
						required: true,
						email: true
					},
					agree: "required"
				},
				messages: {
					firstname: "Please enter your Name",
					lastname: "Please enter your Sex",
					username: {
						required: "Please enter a username",
						minlength: "Your username must consist of at least 2 characters"
					},
					password: {
						required: "Please provide a password",
						minlength: "Your password must be at least 5 characters long"
					},
					confirm_password: {
						required: "Please provide a password",
						minlength: "Your password must be at least 5 characters long",
						equalTo: "Please enter the same password as above"
					},
					email: "Please enter a valid email address",
					agree: "Please accept our policy"
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
