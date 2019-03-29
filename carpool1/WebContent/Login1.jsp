
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
body
{
margin: 0;
padding : 0;
background-image:url("c1.jpg");
background-size: absolute;
height:50%;
background-position: center;
font-family: sans-serif;
}

.loginbox
{
width:320px;
height:500px;
background: ;
color: #fffff;
top: 50%;
left:20%;
position: absolute;
transform: translate(-50%,-50%);
box-sizing: border-box;
padding: 20px 20px;
}

.avatar
{
width:100px;
height:100px;
border-radius:50%;
position: absolute;
top: -50%
left: calc(50% -50px);
}

h1
{
margin:0;
padding: 0 0 20px;
text-align: center;
font-size: 22px;
}

.loginbox p
{
margin: 0;
padding : 0;
font-weight: bold;
}

.loginbox input
{
width: 100%;
margin-bottom: 20px;
}

.loginbox input[type="text"], input[type="password"]
{
border : none;
border-bottom: 1px solid #fff;
background: transparent;
outline: none;
height: 40px;
color: #fff;
font-size:16px;
}


.loginbox input[type="submit"]
{
border:none;
outline: none;
height: 40px;
background: #fb2525;
color: #fff;
font-size: 18px;
border-radius: 20px;
}


.loginbox input[type="submit"]:hover
{
cursor:pointer;
background:#ffc107;
color: #000;
}

.loginbox a
{
text-decoration: none;
font-size: 12px;
line-height: 20px;
color: black;
}

.loginbox a:hover
{
color: #ffc107;
}


</style>
<title>Login Form Design</title>
<link rel="stylesheet" type="text/css" href="Style.css">
	
<script language="javascript">
function abc()
{
if(document.loginform.user.value!="" && document.loginform.pwd.value!="")
alert("Welcome Customer!!");
}
</script>
</head>








<body>



<!--  --ul>  <font size = "5">
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="aboutus.jsp">About Us</a></li>

</font>
</ul-->

<center><i><h1 style="border:2px solid Tomato;">Happy Ride</h1></i></center> 
<pre>
     <a href="contact.jsp">CONTACT</a>                                                                                                    <a href="aboutus.jsp">ABOUT_US</a>
</pre>
<div class="loginbox">
<pre>

<br><br>
	     <img src="avatar.png" class="avatar"><br><br><br><br><br>
</pre>
	<h1>Login Here</h1>
	
<form name="loginform" action="LoginServlet" method="post">

<p>Customer name</p>
<input type="text" name="username" placeholder="Enter Customer name"  required>
<p>Password</p>
<input type="password" name="pwd" placeholder="Enter Password" required>

<input type="submit" name="" value="Login" onclick="abc()" ><br>


<pre>
            <a href=".html" align="right"></a>
</pre>

</form>
</body>
</html>