package com.mvc.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;
public class RegisterServlet extends HttpServlet 
{
	public RegisterServlet() 
	{
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String firstName = request.getParameter("Fname");
		String lastName = request.getParameter("Lname");
		String age = request.getParameter("Age");
		String userId = request.getParameter("UserId");
		String contact = request.getParameter("Number");
		String password = request.getParameter("Password");
		String gender = request.getParameter("gender");
		
		System.out.println(firstName);
		System.out.println(lastName);
		System.out.println(age);
		System.out.println(userId);
		System.out.println(contact);
		System.out.println(password);
		System.out.println(gender);
		
		
		RegisterBean registerBean = new RegisterBean();
	
		registerBean.setFirstname(firstName);
		registerBean.setLastname(lastName);
		registerBean.setAge(age);
		registerBean.setUserid(userId);
		registerBean.setContactno(contact);
		registerBean.setPassword(password);
		registerBean.setGender(gender);
		
		
		RegisterDao registerDao = new RegisterDao();
		
		String userRegistered = registerDao.registerUser(registerBean);
		if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		{
			request.getRequestDispatcher("/Login1.jsp").forward(request, response);
		}
		else   
		{
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/Register.jsp").forward(request, response);
		}
}

}


