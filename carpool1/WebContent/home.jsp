<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>
Home
</title>
</head>



<style>
body{
display: table;

background: url('c1.jpg') no-repeat  ;
height: 20%;
width: 100%;
background-size: cover;
 
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #3333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: right;
  padding: 20px 272px;
  text-decoration: none;
}

li a:hover {
  background-color: orange;
</style>





<body>
<br>
<br>
<center><i><h1 style="border:2px solid Tomato;">Happy Ride</h1></i></center> 


<form>
<ul>  <font size = "5">
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="aboutus.jsp">About Us</a></li>

</font>
</ul>   
</body>
</form>
<br>



<style> 
input[type=text] {
  width: 130px;
  margin-top : 10px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: yellow;
  background-image: url("");
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
  width: 100%;
}
</style>
<form>
<div id="sidebar">
  <div class="toggle-btn" onclick="toggleSidebar()">
    <span></span>
    <span></span>
    <span></span>

    </div>


<!--  --ul>
   <li>
   <a href="help.jsp">Help</a></li>
   <br><br>
   <li><a href="faqs.jsp">FAQ's</a></li>
   <br><br>
   <li><a href="gallery.jsp">Gallery</a></li>
</ul-->

<a href="help.jsp">Help</a> 
   <br><br>
   <a href="faqs.jsp">FAQ's</a>
   <br><br>
   <a href="gallery.jsp">Gallery</a>
  </div>
</form>
</body>
   



   <style>
*{
  margin:0px;
  padding:0px;
  font-family:sans-serif;
}
#sidebar{
  position:fixed;
  width:200px;
  height:100%;
  background:#151719;
  left:-200px;
  transition:all 500ms linear;
}
#sidebar.active{
  left:0px;
}
#sidebar ul li{
  color:rgba(230,230,230,0.9);
  list-style:none;
  padding:15px 10px;
  border-bottom:1px solid rgba(100,100,100,0.3);
}
#sidebar .toggle-btn{
  position:absolute;
  left:230px;
  top:20px;
}
#sidebar .toggle-btn span{
  display:block;
  width:30px;
  height:5px;
  background:#151719;
  margin:5px 0px; 
}


.loginbox
{
width:320px;
height:490px;
background: #0022;
color: #fffff;
top: 50%;
left:50%;
position: absolute;
transform: translate(-50%,-50%);
box-sizing: border-box;
padding: 20px 20px;
}

.loginbox input[type="text"], input[type="password"]
{
border : none;
border-bottom: 1px solid #fff;
background: transparent;
outline: none;
height: 50px;
color: #fff;
font-size:16px;
}


.loginbox input[type="submit"]
{
border:none;
outline: none;
width: 180px;
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
<body bgcolor="Lightseagreen">
<div class="loginbox">
<pre>

<pre>






<center>
<a href="Register.jsp"><input type="submit" name="" value="Register Here"  ></a><br><br>
<a href="Login1.jsp"><input type="submit" name="" value="Login" onclick="abc()" ></a><br>
</center>
<form name="loginform" action="LoginServlet" method="post">
</pre>
</form>
</body >




<script>
function toggleSidebar(){
  document.getElementById("sidebar").classList.toggle('active');
}
</script>

</html-->
