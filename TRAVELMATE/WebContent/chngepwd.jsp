<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<style>
* {
	font-family: century gothic;
	padding: 0;
	margin: 0;
}

body {
	background-image: url(./Images/travel_1.jpg);
	background-position: center;
	background-size: cover;
	background-attachment: fixed;
}

.container {
	background-color: rgba(0, 0, 0, 0.3);
	width: 350px;
	height: 400px;
	border-radius: 10px;
	margin: 0 100px;
	margin-top: 150px;
}

.inner {
	width: 260px;
	padding: 10px;
	margin-top: 10px;
	margin-bottom: 10px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 31px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
	font-weight: 500;
}

::placeholder {
	color: #fff;
}

.paragraph {
	background: #26a65b;
	background-color: transparent;
	color: #fff;
	text-align: center;
	border-radius: 10px;
	padding: 15px 0px 15px 0px;
	border-bottom-right-radius: 0px;
	border-bottom-left-radius: 0px;
	font-weight: 900;
}

.save {
	width: 285px;
	padding: 20px;
	font-size: 16px;
	font-family: century gothic;
	font-style: normal;
	font-weight: 600;
	border: none;
	border-radius: 12px;
	margin-top: 20px;
	margin-left: 31px;
	background-color: #1e8bc3;
	cursor: pointer;
}
</style>
</head>
<body>
<form action="Login.jsp">
		<div class="container">
			<p class="paragraph">CHANGE PASSWORD
			<p>
				<input type="text" name="uid" placeholder="UserId"
					class="inner"><br> <input type="password" name="cpass"
					placeholder="Current Password" class="inner"><br> <input
					type="password" name="new" placeholder="New Password" class="inner"><br>
				<input type="password" name="renew" placeholder="Re-New Password"
					class="inner"><br>
				<input type="submit" class="save" value="SAVE CHANGES" onclick="pass()"/>
		</div>
	</form>
	<script>
	function pass() 
	{
	    var newpassword = document.getElementById("newpwd").value;
	    var confirmPassword = document.getElementById("conpwd").value;
	    if (newpassword != confirmPassword)
	 {
	        alert("Passwords do not match.");
	        return false;
	    }
	    return true;
	}

	</script>
</body>
</html>