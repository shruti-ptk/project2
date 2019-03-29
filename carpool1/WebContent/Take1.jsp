
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
  <script>
  function cde()
  {
	  int a;
	  if(a==1)
		  alert("Amount To Be Paid"+a);
	  else if(a==2)
		  alert("Amount To Be Paid"+a);
	  else if(a==3)
		  alert("Amount To Be Paid"+a);
	  else if(a==4)
		  alert("Amount To Be Paid"+a);
	  else
		  alert("Invalid")
	  
  }
  </script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Take1.css">

<title>Results</title>
</head>


<body>

<%@ page import="java.sql.*" %>
<%@ page import="com.mvc.util.DBConnection" %>

<%
try
{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","root");
       PreparedStatement preparedStatement = null;
       
       String ss=request.getParameter("s1");
       
       if(ss.equals("Give Ride"))
       {
    	   String firstname = request.getParameter("firstname");
   		String lastname = request.getParameter("lastname");
   		String age= request.getParameter("age");
   		String gender = request.getParameter("gender");
   		String contactno = request.getParameter("contactno");
   		String city = request.getParameter("city");
   		String pincode= request.getParameter("pincode");
   		String seat= request.getParameter("NoofSeats");
   		String pickup = request.getParameter("Pick-up Location");
   		String drop = request.getParameter("Drop Location");
   		String time = request.getParameter("EnterTime");
		
			con = DBConnection.createConnection();
			String query = "insert into ride(firstname,lastname,age,gender,contactno,city,pincode,seats,pickup,dropp,time) values (?,?,?,?,?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
			preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
			preparedStatement.setString(1, firstname);
			preparedStatement.setString(2, lastname);
			preparedStatement.setString(3, age);
			preparedStatement.setString(4, gender);
			preparedStatement.setString(5, contactno);
			preparedStatement.setString(6, city);
			preparedStatement.setString(7, pincode);
			preparedStatement.setString(8, seat);
			preparedStatement.setString(9, pickup);
			preparedStatement.setString(10, drop);
			preparedStatement.setString(11, time);
			
		
			
			preparedStatement.executeUpdate();
			
			out.print("Your ride has been successfully offered! :)");
       }
       else if(ss.equals("Take Ride"))
       {
    	   
    	  // out.print("<form action="+"update.jsp"+ " method="+"post"+">");
    	   String pick = request.getParameter("Pick-up Location");
           String drop = request.getParameter("Drop Location");
           String seat = request.getParameter("NoofSeats");
           ResultSet resultSet = null;
           String query = "select firstname, lastname, gender, contactno from ride where pickup=? and dropp=?"; 
           preparedStatement = con.prepareStatement(query); 
           
        preparedStatement.setString(1, pick);
        preparedStatement.setString(2, drop);
        
        resultSet = preparedStatement.executeQuery();
        out.print("<table class=t1>");
        out.print("<tr>");
           out.print("<td>" + "<b><i>First Name<b><i>" + "</td>");
           out.print("<td> &nbsp;&nbsp;&nbsp;" + "<b><i>Last Name</b></i>" + "</td>");
           out.print("<td> &nbsp;&nbsp;&nbsp;" + "<b><i>Gender</b></i>" + "</td>");
           out.print("<td> &nbsp;&nbsp;&nbsp;" + "<b><i>Contact Number</b></i>" + "</td>");
           out.print("</tr>");
           
           
           
           while(resultSet.next()) 
           {
                  String firstnameDB = resultSet.getString("firstname"); 
                  String lastnameDB = resultSet.getString("lastname");
                  String genderDB = resultSet.getString("gender"); 
                  String contactnoDB = resultSet.getString("contactno");
           
                  
                  out.print("<tr>");
                  out.print("<td>" + firstnameDB + "</td>");
                  out.print("<td>" + lastnameDB + "</td>");
                  out.print("<td>" + genderDB + "</td>");
                  out.print("<td>" + contactnoDB + "</td>");
               
                  //out.print("<td><input type="+"radio" +" name="+"selected" +  "value="+firstnameDB+"></td>");
                  
               		
                  out.print("<td><a href = payment.jsp>pay now</a></td>");
                  
                  out.print("</tr>");
                  
           }
           out.print("</table>");
           
           String query1 = "select price from fare where pickup=? and dropp=? and seat=?"; 
           PreparedStatement p1 = con.prepareStatement(query1);
           p1.setString(1, pick);
           p1.setString(2, drop);
           p1.setString(3, seat);
           
           //out.print("drop "+drop);
           //out.print("pickup "+pick);
           //out.print("seat "+seat);
           
           
           ResultSet uttu = null;
           uttu = p1.executeQuery();
          // out.print("<br>size = "+uttu.getFetchSize());
           while(uttu.next())
           {
        	           
           	String priceDB=uttu.getString("price");
  
           out.print("<br><br>Amount to be paid ="+priceDB);
           }
  
           //  <form>
         //<input type="button" name="btn1" value="Submit" onclick="cde()"/>

                       //    String query1 = "select price from fare(pickup,dropp,seat)values (?,?,?)"; //Insert user details into the table 'USERS'
         			//preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
         			//preparedStatement.setString(1, pickup);
         			//preparedStatement.setString(2, drop);
         			//preparedStatement.setString(3, seat);
         			//out.print(price);
         			
         			
         			//</form>	
           
           //out.print("<td><a href = payment.jsp>pay now</a></td>");
           //out.print("<pre><button class=button id="+"UpdateStatus"+" type="+"submit"+">Update Status</button></pre>");
          // out.print("</form>");
           
    }
}
    catch(Exception e)
    {
           e.printStackTrace();
    }
      
       

%>

</body>
</html>
