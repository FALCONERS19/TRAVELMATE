<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Checkout</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" >
<style>
*{
margin:0;
padding:p;
box-sizing: border-box;
font-family: Century Gothic;
}
body{
background-image: url('./Images/euro.jpg');
background-attachment: fixed;
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
margin:0 10px;
}
.payment{
background:rgba(0,0,0,0.5);
max-width:360px;
margin:80px auto; 
height:auto;
padding:35px;
padding-top:35px; 
border-radius: 5px;
position:relative;
}
.payment h2{
padding-top:;
text-align: center;
letter-spacing: 2px;
margin-bottom: 40px;
color:#fff;
}
.form .label{
display: block;
color:#fff;
margin-bottom: 6px;
}
.form .input{
padding: 13px 0 13px 25px;
width: 100%;
background-color:transparent;
text-align: center;
border: 2px soild #fff;
border-radius:5px;
border-style:solid;
letter-spacing: 1px;
word-wrap:3px;
outline: none;
font-size: 16px;
color:#fff;
}
.sel{
padding: 13px 0 13px 25px;
width: 100%;
background-color:transparent;
text-align: center;
border: 3px soild #fff;
border-radius:5px;
border-style:solid;
letter-spacing: 1px;
word-wrap:3px;
outline: none;
font-size: 16px;
color:#fff;
}
::placeholder{
color:#fff;
}
.card-grp{
display: flex;
justify-content: space-between;
}
.card-item{
width: 48%;
}
.space{
margin-bottom: 20px;
}
.icon-relative{
position: relative;
}
.icon-relative .far,
.icon-relative .fas{
position: absolute;
bottom: 15px;
left:15px;
font-size: 20px;
color:#fff;
}
.btn{
margin-top: 40px;
background: #2196f3;
padding:12px;
text-align: center;
color:#f8f8f8;
border-radius:5px;
cursor: pointer;
}
.payment-logo{
position: absolute;
top:-50px;
left: 50%;
transform: translateX(-50%);
width: 100px;
height:100px;
background: #f8f8f8; 
border-radius:50%;
box-shadow:0 0 5px rgba(0,0,0,0.2);
text-align: center;
line-height: 80px;
}
.payment-logo:before{
content:"";
position: absolute;
top:5px;
left:5px;
width:90px;
height: 90px;
background: #2196f3;
border-radius:50%;
}
.payment-logo p{
color:#f8f8f8;
position:relative;
font-size: 58px;
}
.payment-logo{
position:absolute;
top:-20px;
left:50%;
transform: translateX(-50%);
width:100px;
height:100px;
background:#f8f8f8;
border-radius:50%;
box-shadow:0 0 5px rgba(0,0,0,0.2);
text-align: center;
line-height: 100px;
}
.select {
	width: 290px;
	height: 50px;
	border-radius: 5px;
	border: none;
	border: 2px solid #fff;
	margin-left: 0px;
	
	background-color: transparent;
	text-align:center;
	color:#fff;
}
option{
text-align:center;
color:#000;
}
.cust{
color:#fff;
position: absolute;
	margin-top: 13px;
	margin-left:px;
}
</style>
</head>
<body>
<div class="wrapper">
		<div class="payment">
		<!-- <div class="payment-logo">
		<p>p</p>
		</div> -->
			<h2>Payment</h2>
			<div class="form">
				<div class="card space icon-relative">
					<label class="label">Card Holder:</label> 
					<input type="text" class="input" name="card_holder" placeholder="Card Holder name">
					<i class="fas fa-user"></i>
				</div>
				<div>
				<label class="label">Card Type:</label> 
					<select class="select"><!-- <i class="far fa-credit-card cust"></i> -->
					<option>--Select Card Type--</option>
					<option value="Visa card">Visa card</option>
					<option value="Rupay card">Rupay card</option>
					<option value="Master card">Master card</option>
					<option value="Mastero card">Mastero card</option>
					
					</select><!-- <i class="far fa-credit-card cust"></i> -->
				</div>
				<div class="card space icon-relative">
					<label class="label">Card Number:</label> 
					<input type="text" class="input" name="card_number" placeholder="Card Number">
					<i class="far fa-credit-card"></i>
				</div>
				<div class="card-grp icon-relative" id="cvv">
				<div class="card-item">
					<label class="label">Expiry Date:</label> 
					<input type="text" class="input" name="expiry_date" placeholder="00/00">
					<i class="fas fa-calendar-alt"></i>
				</div>
				<div class="card-item icon-relative">
					<label class="label">CVV:</label> 
					<input type="text" class="input" name="cvv" placeholder="000">
					<i class="fas fa-lock"></i>
				</div>
				</div>
				<div class="btn">
				PAY
				</div>
			</div>
		</div>
	</div>
</body>
</html>