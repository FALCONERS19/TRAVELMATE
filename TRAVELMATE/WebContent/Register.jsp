<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('./Images/tour.jpg');
background-position:center;
background-size: cover;
background-repeat:no-repeat;
background-attachment:fixed;
padding: 0px;
margin: 0px;
font-family: century gothic;
}
.container{
background-color:rgba(0,0,0,0.3);
width: 500px;
height: 525px;
border-radius: 10px;
margin: 0 auto;
margin-top: 50px;
}
.paragraph{
background: #4d05e8;
color: #fff;
text-align: center;
border-radius: 10px;
padding: 15px 0px 15px 0px;
border-bottom-right-radius:0px;
border-bottom-left-radius:0px;
background:transparent;
}
.igt{
 width: 186px;
 height: 35px;
 border-radius: 3px;
 border:none;
 border: 2px solid #fff;
 margin-left: 40px; 
 border-left: 2px soild #19b5fe;
 background-color: transparent;
}
.email{
width: 420px;
 height: 35px;
 border-radius: 3px;
 border:none;
 border: 2px solid #fff;
 margin-left: 40px;
 margin-top:20px;
 margin-bottom:20px;
 background-color: transparent;
}
.radio{
margin-left:40px;
margin-right:-20px;
padding-left:-20px;
}
.dat{
margin-left:79px;
width: 187px;
 height: 35px;
 border-radius: 3px;
 border:none;
 border: 2px solid #fff;
 margin-left:74px;
 background-color: transparent;
}
.opt{
margin-left:40px;
margin-right:-30px;
width:50px;
height: 40px;
border-radius: 3px;
 border:none;
 border: 2px solid #fff;
 margin-top:20px;
 background-color: transparent;
}
.number{
margin-left:40px;
width: 120px;
 height: 35px;
 border-radius: 3px;
 border:none;
 border: 2px solid #fff;
 background-color: transparent;
}

#sub{
   width:425px;
   padding: 20px;
   font-size: 16px;
   font-family: century gothic;
   font-style: normal;
   font-weight: 600;
   border: none;
   border-radius: 12px;
   margin-top:20px;
   margin-left:40px;
   background-color: #26a65b;
}
#card{
width: 190px;
}
#add{
margin-bottom:7px;
}
::placeholder{
color:#000;
margin-left:10px;
text-align: 
}
.sel{
color:#fff;
}
placeholder{
margin-left:10px;
}
.emg
{
width: 186px;
 height: 35px;
 border-radius: 3px;
 border:none;
 border: 2px solid #fff;
 margin-left: 40px; 
 border-left: 2px soild #19b5fe;
 background-color: transparent;
}
</style>
</head>
<body>
<div class="container">
<form action="RegServlet" method="post">
<p class="paragraph">Registration From</p>

<input type="text" name="fname" placeholder="First Name" class="igt">
<input type="text" name="lname" placeholder="Last Name" class="igt" >
<br>
<input type="email" name="email" placeholder="Email Id" class="email">
<br>
<select class="igt">
<option>Select</option>
<option>Aadhar Card</option>
<option>Voter ID Card</option>
<option>Pan Card</option>
<option>Driving Licence</option>
</select>
<input type="text" name="id" placeholder="Card Id number" class="igt" id="card">
<br>
<br>
<label class="radio"><b>Male</b> <input type="radio" name="gen"  onclick="ADD(this.value)"></label>
<label class="radio"><b>Female </b><input type="radio" name="gen"  onclick="ADD(this.value)"></label>
<input type="text" name="dob" class="dat" placeholder="DD/MM/YYYY">
<br>
<input type="text" name="add" placeholder="Address" class="email" id="add">
<br>
<select class="opt" >
<option>+91</option>
<option>+92</option>
<option>+93</option>
</select>
<input type="number" name="phone" placeholder="Mobile Number" class="number">
<input type="number" name="emphone" placeholder="Emergency Contact" class="emg">
<br>

<p id="userid"></p><p id="pwd"></p>
				

<input type="submit" value="Register" id="sub" onclick="Validate()">
</form>
<script>
		
		function Validate()
		
		{

		var firstname=document.forms["RegForm"]["fname"];
		var lastname=document.forms["RegForm"]["lname"];
		var gender=document.forms["RegForm"]["gender"];
		var dob=document.forms["RegForm"]["dob"];
		var address=document.forms["RegForm"]["address"];
		var id=document.forms["RegForm"]["id"];
		var mobilenumber=document.forms["RegForm"]["phone"];
	

		if (fname.value == "") {
			window.alert("Please enter your first name.");
			fname.focus();
			return false;
		}

		if (lname.value == "") {
			window.alert("Please enter your last name.");
			lname.focus();
			return false;
		}
		if (gen.value == "") {
			window.alert("Please select gender.");
			gen.focus();
			return false;
		}


		if (dob.value == "") {
			window.alert("Please enter your Date OF Birth");
			dob.focus();
			return false;
		}

		if (add.value == "") {
			window.alert("Please enter your address.");
			add.focus();
			return false;
		}

		if (id.selectedIndex < 1) {
			window.alert("Please select the Id proof.");
			idproof.focus();
			return false;
		}

		if (phone.value == "") {
			window.alert("Please enter your mobile number.");
			phone.focus();
			return false;
		}
		if (emphone.value == "") {
			window.alert("Please enter your mobile number.");
			emphone.focus();
			return false;
		}
		return true;
		}
		
	
		
		
		</script>


</div>
</body>
</html>