<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-ticket booking</title>
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link
	href="https://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css"
	rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<script>
	$(document).ready(function() {
		var minDate = new Date();
		$("#depart").datepicker({
			showAnim : 'drop',
			numberOfMonth : 1,
			minDate : minDate,
			maxDate : 90,
			dateFormat : 'dd/mm/yy',
			onClose : function(selectedDate) {
				$('#return').datepicker("option", "minDate", selectedDate);
			}
		});
		
	});
</script>

<style>
*{
margin:0;
padding:0;
font-family:century Gothic;
}
body {
	background-image: url('./Images/Flix.jpg');
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
}

.container {
	background-color: rgba(0, 0, 0, 0.5);
	width: 500px;
	height: 525px;
	border-radius: 10px;
	margin: 0 auto;
	margin-top: 120px;
	margin-left:50px;
}

.paragraph {
	background: transparent;
	color: #fff;
	text-align: center;
	border-radius: 10px;
	padding: 15px 0px 15px 0px;
	border-bottom-right-radius: 0px;
	border-bottom-left-radius: 0px;
	font-weight: 900;
}

.igt {
	width: 200px;
	height: 35px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 40px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
}
.igt1{
	width: 203px;
	height: 35px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 10px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
	color:#fff;
}

.org {
	width: 205px;
	height: 40px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 40px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
}
.des{
width: 205px;
	height: 40px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 10px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
}
.sel {
	width: 424px;
	height: 40px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 40px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
}

select {
	color: #fff;
	text-align: center;
	text-align-last: center;
}

option {
	color: #000;
}

.but {
	width: 425px;
	height: 40px;
	margin-left:40px;
	background-color: #19b5fe;
	border: 1px solid transparent;
	border-radius: 3px;
	cursor: pointer;
}

::placeholder {
	color: #fff;
}
#depart{
color:#fff;
}
.tab {
	width: 100px;
	height: 35px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 40px;
	padding-right: -40px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
}

.passen {
	width: 275px;
	height: 30px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 40px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
	color:#fff;
}

.age {
	width: 50px;
	height: 30px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 7px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
	color:#fff;
}

.select {
	width: 69px;
	height: 35px;
	border-radius: 3px;
	border: none;
	border: 2px solid #fff;
	margin-left: 7px;
	border-left: 2px soild #19b5fe;
	background-color: transparent;
	text-align: center;
}
.cust{
color:#fff;
position: absolute;
	margin-top: 13px;
	margin-left:50px;
}
.custa{
color:#fff;
position: absolute;
	margin-top: 10px;
	margin-left:50px;
}
.custaa{
color:#fff;
position: absolute;
	margin-top: 12px;
	margin-left:20px;
}
header {
	height: 100vh;
	background-size: cover;
	background-position: center;
}

ul {
	float: right;
	list-style-type: none;
	margin: 25px;
}

ul li {
	display: inline-block;
	
}

ul li a {
	text-decoration: none;
	color: #fff;
	padding: 5px 20px;
	border: 1px solid #fff;
	transition: 0.6s ease;
	border-radius: 20px;
	
}

ul li a:hover {
	background-color: #fff;
	color: #000;
}

ul li.active a {
	background-color: #fff;
	color: #000;
}

ul li ul {
	width: 0px;
	height: 0px;
}

.service {
	margin-right: -51px;
}

.abt {
	margin-right: -51px;
}

ul li ul li {
	padding: 10px;
	margin-left: -130px;
	display: none;
	width: 10px;
}

ul li:hover ul li {
	display: block;
}

.logo {
	width: 10px;
	height:5px;
	border-radius: 50%;
	right: calc(50% - 50px);
	margin-top:-10px;
}
.logo img{
width: 220px;
height: 150px;
}

.main {
	max-width: 1200px;
	margin: auto;
}
.sub{
 margin-bottom: -9px;
}
.asub{
margin-bottom: -9px;
}
</style>
</head>
<body>
<form name="RegForm" action="BookServlet" method="post">
		<div class="main">
			<div class="logo">
				<img src="Images/Tlogo1.png" alt="TravelMate">
			</div>
			<ul>
				<li><a href="Homepage1.jsp"><b>Home</b></a></li>
				<li class="abt"><a href="#"><b>About Us</b></a>
				<ul>
						<li class="asub"><a href="#"><b>OurTeam</b></a></li>
						<li class="asub"><a href="#"><b>Vision&Mission</b></a></li>
					</ul> 	</li>
				<li class="service"><a href="#"><b>Services</b></a>
					<ul>
						<li class="sub"><a href="Eticket.jsp"><b>E_Ticket</b></a></li>
						<li class="sub"><a href="Cargo.jsp"><b>Cargo_Services</b></a></li>
						
					</ul></li>
				<li><a href="#"><b>Gallery</b></a></li>
				<li><a href="#"><b>Contact Us</b></a></li>
				<li><a href="Login.jsp"><b>Logout</b></a></li>

			</ul>
		</div>
	<div class="container">
		<p class="paragraph">E-Ticket Booking</p>

		<div class="date-box">
			<i class="fas fa-map-marker-alt fa-1.5x cust"></i> 
			<select id="seat" class="org" name="source">
				<option>--Orgin--</option>
				<option value="chennai">Chennai</option>
				<option value="bangalore">Bangalore</option>
				<option value="kochi">Kochi</option>
				<option value="hyderabad">Hyderabad</option>
			</select> 
			<i class="far fa-compass fa-1.5x custaa"></i> 
			<select id="seat" class="des" name="destination">
				<option>--Destination--</option>
				<option value="chennai">Chennai</option>
				<option value="bangalore">Bangalore</option>
				<option value="kochi">Kochi</option>
				<option value="hyderabad">Hyderabad</option>
			</select> <br> <br> 
			<i class="fas fa-calendar-alt fa-1.5x cust" ></i>
			<input type="text" id="depart" placeholder="Departure Date" class="igt" name="fromdate">
			<i class="fas fa-mobile-alt fa-1.5x custaa"></i>
			<input type="number" placeholder="Mobile number" class="igt1" name="mob"><br><br>
			
			<i class="fas fa-user-plus fa-1.5x cust "></i>
			<select id="seat" class="sel" name="nos">
				<option>--Number of Passenger--</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
			</select>
			<div>
				<br>
				<div>
				<i class="fas fa-user fa-1.5x custa"></i>
					<input type="text" name="name1" placeholder="Passenger 1"
						class="passen"> <input type="number" name="age1"
						placeholder="Age" class="age"> 
						<select class="select" name="gender1">
						<option>Select</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				</div>
				<br>
				<div>
				<i class="fas fa-user fa-1.5x custa"></i>
					<input type="text" name="name2" placeholder="Passenger 2"
						class="passen"> <input type="number" name="age2"
						placeholder="Age" class="age">
						 <select class="select" name="gender2">
						<option>Select</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				</div>
				<br>
				<div>
				<i class="fas fa-user fa-1.5x custa"></i>
					<input type="text" name="name3" placeholder="Passenger 3"
						class="passen"> <input type="number" name="age3"
						placeholder="Age" class="age"> <select class="select" name="gender3">
						<option>Select</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				</div>
				<br>
				<div>
				<i class="fas fa-user fa-1.5x custa"></i>
					<input type="text" name="name4" placeholder="Passenger 4"
						class="passen"> <input type="number" name="age4"
						placeholder="Age" class="age"> <select class="select" name="gender4">
						<option>Select</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				</div>
			</div>
			<br><p id="tid" name="tid"></p>
			<input type="submit" value="Confirm" class="but" onclick="Validate()"> 
			

		</div>
		</div>
		</form>
		<script>
		
		function Validate()
		{
		var origin=document.forms["RegForm"]["source"];
		var destination=document.forms["RegForm"]["destination"];
		var doj=document.forms["RegForm"]["fromdate"];
		var phone=document.forms["RegForm"]["mob"];
		var n=document.forms["RegForm"]["nos"];
		var age1=document.forms["RegForm"]["age1"];
		var age2=document.forms["RegForm"]["age2"];
		var age3=document.forms["RegForm"]["age3"];
		var age4=document.forms["RegForm"]["age4"];
		
		if (origin.value == "") {
		 window.alert("Please select your origin.");
		 origin.focus();
		 return false;
		}
		if (destination.value == "") {
		 window.alert("Please select your destination.");
		 destination.focus();
		 return false;
		}
		if (doj.value == "") {
		 window.alert("Please select date of journey.");
		 doj.focus();
		 return false;
		}

		if ((phone.value == "")&&(phone.length==10)) {
		 window.alert("Please enter your phone number correctly.");
		 dob.focus();
		 return false;
		}
		if (noOfPersons.value == "") {
		 window.alert("Please select your noOfPersons.");
		 noOfPersons.focus();
		 return false;
		}
		if (n.value == "") {
		 window.alert("Please select your noOfPersons.");
		 n.focus();
		 return false;
		}
		if((age1<0)&&(age1="")){
		 window.alert("Please Enter Correct Age.");
		n.focus();
		return false;
		}
		if((age2<0)&&(age2="")){
			 window.alert("Please Enter Correct Age.");
			n.focus();
			return false;
			}
		if((age3<0)&&(age3="")){
			 window.alert("Please Enter Correct Age.");
			n.focus();
			return false;
			}
		if((age4<0)&&(age4="")){
			 window.alert("Please Enter Correct Age.");
			n.focus();
			return false;
			}
		return true;
		}
		</script>
</body>
</html>