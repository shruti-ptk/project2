package com.mvc.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mvc.bean.LoginBean;
import com.mvc.dao.LoginDao;
public class LoginServlet extends HttpServlet 
{
	public LoginServlet()
	{
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		PrintWriter out=response.getWriter();
		String userName = request.getParameter("username");
		String password = request.getParameter("pwd");
		
		LoginBean loginBean = new LoginBean(); 
		loginBean.setUserName(userName);
		loginBean.setPassword(password);
		
		LoginDao loginDao = new LoginDao();
		String userValidate = loginDao.authenticateUser(loginBean);
		
		if(userValidate.equals("SUCCESS")) 
		{
			out.print("SUCCESS");
			request.setAttribute("userName", userName); 
			request.getRequestDispatcher("/Ride.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("errMessage", userValidate); 
			request.getRequestDispatcher("/Login1.jsp").forward(request, response);
		}
	}
}