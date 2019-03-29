
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--html>
<head>

<title> Registration Form </title>
  
<link rel = "stylesheet" type = "text/css" href = "Reg Form.css"">
</head>
<style>

*{
margin: 0
padding: 0;
}

body{
background-image: url("w1.jpeg");
background-size:100% 700px;
background-repeat:no-repeat;
}
h1{
text align: center;
padding: 20px;
}

h2{
text align: center;
padding: 20px;
}

.register{
width: 400px;
margin: -100px 0px 0px 430px;
color: white;
font-size:18px;
padding:20px;
border-radius:10px;
border:2.5px solid lightgrey;
}

#register{
margin-left:50px;
}

label{
color:black;
font-family:sans-serif;
font-size:18px;
font-style:italic;
}

#name{
width: 300px;
border:none;
border-radius:3px;
outline:0;
padding:7px;
}

#num{
width: 180px;
border:none;
border-radius:3px;
outline:0;
padding:7px;
}

#sub{
width: 200px;

color: black;
font-size:16px;
font-family:sans-serif;
padding:7px;
font-style:italic;
border-radius:3px;
font-weight:600;
outline:0;
}


</style>
<body>
<div>
<form action="RegisterServlet" method= "post">

<h1><center>Registration form</center> </h1>
<div class = "register">
<form method = "post" id = "register" action = "RegisterServlet";>
<h2> Register Here </h2>

<label> First Name:</label><br>
<input type ="text" name = "Fname" id = "name"
placeholder = "Enter your first name"> <br><br>


<label> Last Name:</label><br>
<input type ="text" name = "Lname" id = "name"
placeholder = "Enter your last name"> <br><br>

<label> Age: </label><br>
<input type ="number" name = "Age" id = "age"
placeholder = "Enter your age"> <br><br>

<label> Contact Number:</label><br>

<input type ="number" name = "Number" id = "num"
placeholder = "Enter your mobile number" maxlength="10"> <br><br>

<label>User Id:</label><br>
<input type ="text" name = "UserId" id = "age"
placeholder = "Enter your age"> <br><br>

<label> Password:</label><br>
<input type ="text" name = "Password" id = "pass"
placeholder = "Enter your password"> <br><br>

<label> Gender:</label><br>

  <input type="radio" name="gender" value="male" checked> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other <br>

<center><input type = "submit" value = "Submit" id="sub"></center>

<span><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%>
 </span>

</form>
</div>
</div>

</body>

</html-->




<html>
<head>
<title>Register Here</title>
<link rel = "stylesheet" type = "text/css" href = "Reg Form.css"">
<style>

body
{
background-color: lightseagreen;
background-size: cover;
font-family: Arial;
}

.wrap
{
max-width:350px;
border-radius:20px;
margin:auto;
background: rgba(0,0,0,0.5);
box-sizzing: border-box;
padding: 40px;
color: #fff;
margin-top: 100px;
}

h2
{
text-align:center;
}

input[type=text] ,input[type=password],input[type=number]
{
width: 100%;
box-sizzing: border-box;
padding: 12px 5px;
background: rgba(0,0,0,0.10);
outline: none;
border:none;
border-bottom: 1px dotted #fff;
color: #fff;
border-radius: 5px;
margin:5px;
font-weight: bold;
}

.sub
{
width:100%;
box-sizing:border-box;
padding:10px 0;
margin-top:30px;
outline:none;
border:none;
background: #60adde;
opacity:0.7;
border-radius: 20px;
fon-size:20px;
color:#fff;
}

.sub:hover
{
background: #003366;
opacity:0.7;
}


</style>
</head>
<body>
<center><i><h1 style="border:2px solid Tomato;">Happy Ride</h1></i></center> 
<pre>
     <a href="contact.jsp">CONTACT</a>                                                                                               <a href="aboutus.jsp">ABOUT_US</a>
</pre>
<div class="wrap">
	<h2>Register Here</h2>

<form action="RegisterServlet" method="post">
First Name<input type="text" name="Fname" placeholder="Enter First Name. ." required><br>
Last Name<input type="text" name="Lname" placeholder="Enter Last Name. ." required><br>
Age<input type="number" name="Age" placeholder="Enter Age. ." ><br>
Contact Number<input type="Number"  name="Number" placeholder="Enter Number. ." maxlength="10"required><br>
  User Id<input type="text"  name="UserId" placeholder="Enter User Id. ." required><br>
Password<input type="password" name="Password" placeholder="Enter Password. ." required><br>
Gender: <br /><input type="radio" name="gender" value="Male"> Male <br />
<input type="radio" name="gender" value="Female" checked> Female <br />
<input type="radio" name="gender" value="Other"> Other
<input type="submit" value="Submit" class="sub">
<span><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%>
 </span>

</form> 

</body>
  </html>