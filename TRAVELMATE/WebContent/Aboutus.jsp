<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
width:100%;
height:100%;

}
.container {
  position: relative;
  width: 100%;
}

.image {
  display: block;
  width: 100%;
  height: 500px;
}

.overlay {
  position: absolute;
  bottom: 100%;
  left: 0;
  right: 0;
  background-color: #008CBA;
  overflow: hidden;
  width: 100%;
  height:0;
  transition: .5s ease;
}

.container:hover .overlay {
  bottom: 0;
  height: 100%;
}

.text {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
}
h2{
text-align: center;
font-size:30px;
}

</style>
</head>
<body>
<h2>About Us</h2>


<div class="container">
  <img src="Images/road1.jpg" alt="Avatar" class="image">
  <div class="overlay">
    <div class="text"><p>Hello World<p></div>
  </div>
  
</div>
<div class="container">
  <img src="Images/road1.jpg" alt="Avatar" class="image">
  <div class="overlay">
    <div class="text"><p>Hello World<p></div>
  </div>
  
</div>
</body>
</html>