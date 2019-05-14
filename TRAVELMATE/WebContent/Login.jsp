<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<style>
body {
	margin: 0;
	padding: 0;
	background-image: url('./Images/auto.jpg');
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	font-family: sans-serif;
	width: 100%;
	height: 100%;
}

.login-box {
	width: 320px;
	height: 380px;
	background: rgba(0, 0, 0, 0.2);
	color: #fff;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(20%, -60%);
	box-sizing: border-box;
	padding: 70px 30px;
	border-radius: 10px;
}

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
	left: calc(50% - 50px);
}

h1 {
	margin: 0;
	padding: 0 0 20px;
	text-align: center;
	font-size: 22px;
}

.login-box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
}

.login-box input {
	width: 100%;
	margin-bottom: 20px;
}

.login-box input[type="text"], input[type="password"] {
	border: none;
	border-bottom: 1px solid #fff;
	border-bottom-width: 0px;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
	padding-left: 25px;
}

.login-box input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: #1c8adb;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}

.login-box input[type="submit"]:hover {
	cursor: pointer;
	background: #39dc79;
	color: #000;
}

.login-box a {
	text-decoration: none;
	font-size: 14px;
	color: #fff;
}

.login-box a:hover {
	color: #000;
}

.footer {
	margin-top: 550px;
	margin-bottom: 30px;
	margin-left: auto;
	margin-right: auto;
	width: 100%;
	height: 20px;
	background: rgba(0, 0, 0, 0.5);
	text-align: right;
	color: #fff;
}

.cust {
	position: absolute;
	margin-top: 13px;
}
</style>
</head>
<body>

	<!-- <a href="loginservlet">Click here</a> -->
	<div class="login-box">
		<img class="avatar" src="Images/avatar.png">
		<h1>Login Here</h1>
		<form action="LoginServlet" >
			<div>
				<i class="fas fa-user fa-1x cust"></i> <input name="uid"
					type="text" placeholder="UserID"> <i
					class="fas fa-lock fa-1x cust"></i> <input name="pass"
					type="password" placeholder="Password"> <input
					name="submit" type="submit" value="Login">
			</div>
			<label> <a href="Reg.jsp">New Registration? </a><a href="#">Forgot
					Password?</a>


			</label>

		</form>

	</div>
	<div class="footer">
		<footer>

		<p align="center">&copy copyrights-TRAVELMATE-2K19</p>

		</footer>
	</div>
</body>
</html>