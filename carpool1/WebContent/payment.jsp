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
</html>

<!DOCTYPE html>
<html>
<head>
<style>
.methods {
 
  color: white;
  margin: 0px;
  padding: 1px;
width: 400px;
} 
</style>
</head>
<body style="background-color:pink">
<h1 style="border:2px solid Tomato;"> <center>PAYMENT METHODS</center> </h1>
<center>
<div class="methods">
<pre>
  <h2> <a href ="credit.jsp" style="color:black">CREDIT CARD</a> </h2>
</pre>

  
</div>
<div class="methods">
<pre>
  <h2><a href = "debit.jsp" style="color:black">DEBIT CARD</a>    </h2>
  </pre>
</div>

<div class="methods">
<pre>
  <h2><a href = "cash.jsp" style="color:black">CASH PAYMENT</a>   </h2>
</pre>
</div>
</center>


</body>
</html-->



<!DOCTYPE html>
<html>
<head>
<script language="Javascript">
function abc()
{
	alert("Payment Successful");
}

</script>
<title>payment</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}
* {
  box-sizing: border-box;
}
.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}
.col-25 {
  -ms-flex: 25%; /* IE10 
  
  
  flex: 25%;
}
.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}
.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}
.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}
.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}
input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
label {
  margin-bottom: 10px;
  display: block;
}
.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}
.btn:hover {
  background-color: #45a049;
}
a {
  color: #2196F3;
}
hr {
  border: 1px solid lightgrey;
}
span.price {
  float: right;
  color: grey;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<pre>
     <a href="contact.jsp">CONTACT</a>                                                                      <a href="aboutus.jsp">ABOUT_US</a>
</pre>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="thankyou.jsp">
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Details</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="Enter Name">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="example@gmail.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="CDC Building, Phase-3">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="Pune">
            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="Maharashtra">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="462008">
              </div>
            </div>
          </div>
          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Enter Name">
            <label for="ccnum">Card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder=" Enter Month">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2099">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="123">
              </div>
            </div>
          </div>
          
        </div>
      
        <input type="submit" value="Continue To Pay" class="btn" >
 
        <input type="submit" value="Pay By Cash" class="btn" onclick="abc()">     
              
</form>

<form action="Ride.jsp">
<input type="submit" value="Cancel Ride" class="btn" >      
</form>
    </div>
  </div>
  <div class="col-25">
   
  </div>
</div>


</body>
</html>

