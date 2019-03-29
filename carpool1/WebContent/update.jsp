<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-repeat: no-repeat; background-attachment: fixed; background-image:linear-gradient(-45deg, #33bbff,#00b3b3,#669999)">

<font color="black">

<div class="content">
<h1> ELIGIBLE STUDENTS </h1>
</div>

<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root", "root");
	Statement statement = con.createStatement(); 
	
	//int size=(Integer)session.getAttribute("csize");
	String selectID[]= request.getParameterValues("s1");
	
//	for(int i=0;i<selectID.length;i++)
	String firstname=request.getParameter("selected");
//	{
		//out.print(selectID[i]);
		String query="UPDATE ride SET  ;
		statement.executeUpdate(query);
		
	statement.close();
	}


catch(Exception e)
{
	System.out.println(e);
}

%>