
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="JavaScript">
function abc()
{
  alert("Your Ride is Successfully Booked");
}
</script>
<title>ride details</title>

<style>
body{
background: url('c1.jpg') no-repeat 50% 50%;
    display: table;
    height: 100%;
    width: 100%;
    background-size: cover;

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<pre>
     <a href="contact.jsp">CONTACT</a>                                                                                               <a href="aboutus.jsp">ABOUT_US</a>
</pre>

<!-- center><h1 style="border:2px solid black;"><i>" You Want To "</i></h1></center-->
<br>
<center>
<form action="Take1.jsp">
  <!-- input type="radio" name="option" value="give" checked> <b><i>Give Ride</b></i>

  <!--  form action="TakeServlet" method="post"-->
  
  <!-- input type="radio" name="option" value="take"> <b><i>Take Ride</b></i><br-->

</center>
<center><h1 style="border:2px solid black;"><i> "Enter Your Details" </i></h1></center>
<center>
<table>

<tr>
<td><i><b>First name</i></b><sup>*</sup><b>:</b></td>
  <td><input type="text" name="firstname" value=""></td>
  <td><i><b>Last name</b></i><sup>*</sup><b>:</b></td>
  <td><input type="text" name="lastname" value=""></td>
   <br>
</tr>

<tr>
<td> <i><b>Age</b></i><sup>*</sup><b>:</b></td>
  <td><input type="number" name="age" value=""></td>
  <br>
</tr>

  <tr>
  <td><i><b>Gender</i></b><sup>*</sup><b>:</b></td>
  <td><input type="radio" name="gender" value="male" checked> <i><b>Male</i></b>
  <input type="radio" name="gender" value="female"> <i><b>Female</i></b><br></td>
  </tr>

  <tr>
  <td><i><b>Contact No.</i></b><sup>*</sup><b>:</b></td>
  <td><input type="number" name="contactno" maxlength="12"></td>
  <br>
  </tr> 
  <tr>

<td><i><b>City</i></b><sup>*</sup><b>:</b></td>
  
 <td><select name="city">
    <option value="Pune">Pune</option>
  
  </select>
</td>


  <br>
  </tr>

  
  <tr>
  <td><i><b>Pin Code</i></b><sup>*</sup><b>:</b></td>
  <td><input type="number" name="pincode" maxlength="6"></td>
  <br>
  </tr>

  <tr>
  <td><i><b>No. of Seats</i></b><sup>*</sup><b>:</b></td>

 <td><select name="NoofSeats">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    </select>
</td>
  </tr>
  <br><br>
  
  <tr>
<td><i><b>Enter Time:</i></b><sup>*</sup><b>:</b></td>
 <td><select name="EnterTime">
    <option value="9:00 AM">9:00 AM</option>
    <option value="10:00 AM">10:00 AM</option>
    <option value="11:00 AM">11:00 AM</option>
    <option value="12:00 PM">12:00 PM</option>
     <option value="1:00 PM">1:00 PM</option>
      <option value="2:00 PM">2:00 PM </option>
       <option value="3:00 PM">3:00 PM</option>
        <option value="4:00 PM">4:00 PM</option>
         <option value="5:00 PM">5:00 PM</option>
          <option value="6:00 PM">6:00 PM</option>
             <option value="7:00 PM">7:00 PM</option>
          <option value="8:00 PM">8:00 PM</option>
          
  </select>
</td>
  <br>
</tr>
  

<tr>
<td><i><b>Pick-up Location</i></b><sup>*</sup><b>:</b></td>
 <td><select name="Pick-up Location">
    <option value="Wakad">Wakad</option>
    <option value="Kharadi">Kharadi</option>
    <option value="Hinjewadi">Hinjewadi</option>
    <option value="Pimpri-Chinchwad">Pimpri-Chinchwad</option>
  </select>
</td>
 
  <br>
</tr>

<tr>
  <td><i><b>Drop Location</i></b><sup>*</sup><b>:</b></td>
<td><select name="Drop Location">
    <option value="Wakad">Wakad</option>
    <option value="Kharadi">Kharadi</option>
    <option value="Hinjewadi">Hinjewadi</option>
    <option value="Pimpri-Chinchwad">Pimpri-Chinchwad</option><br>
  </select>
</td>

</tr>
<tr>
<td>
	<center><input type="radio" name="s1" value="Give Ride"><b>Give Ride</b></center></tr><br>
<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="s1" value="Take Ride"><b>Take Ride</b></center></td>
</tr>
<tr>
<td>
	<center><input type="submit" name="s1" value="Submit" onclick="abc()"></center></td></tr> 

</table>

<br><br>



</form>
</body>
</html>