<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html-->

<html>
<head>
<title> Credit Card Payment </title>
<style>

.payment{
width: 400px;
margin: 10px 0px 0px 50px;
color: black;
font-size:18px;
padding:20px;
border-radius:10px;
}
</style>
</head>
<body style="background-color:pink;">
<div>
<form>

<h1 style="border:2px solid Tomato;"><center>Credit Card Payment</center> </h1>
<center>
<div class = "payment">

Card Number:<br>
 <input type="number" name="card number" value="Enter the card number">
  <br><br>

  Name on card:<br>
  <input type="text" name="name" value="Name on card">
  <br><br>

Cvv:<br>
<input type="number" name="cvv" value="Enter the cvv">
  <br><br>

<label> Expiry Date:</label><br>
<select id="month">
	
	<option>01</option>
	<option>02</option>
	<option>03</option>
	<option>04</option>
	<option>05</option>
	<option>06</option>
	<option>07</option>
	<option>08</option>
	<option>09</option>
	<option>10</option>
	<option>11</option>
	<option>12</option>
</select>
<select id="year">
	<option>2019</option>
	<option>2020</option>
	<option>2021</option>
	<option>2022</option>
	<option>2023</option>
	<option>2024</option>
	<option>2025</option>
</select>
<br> <br>

<input type = "submit" value = "Submit" id="sub"

</center>
</form>
</div>
</div>
</body>
</html>