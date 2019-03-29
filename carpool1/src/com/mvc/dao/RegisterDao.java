
package com.mvc.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;
public class RegisterDao 
{
	public String registerUser(RegisterBean registerBean)
	{
		String firstName = registerBean.getFirstname();
		String lastName = registerBean.getLastname();
		String age = registerBean.getAge();
		String contact = registerBean.getContactno();
		String userId = registerBean.getUserid();
		String password = registerBean.getPassword();
		String gender = registerBean.getGender();
		
		System.out.println(firstName);
		System.out.println(lastName);
		System.out.println(age);
		System.out.println(userId);
		System.out.println(contact);
		System.out.println(password);
		System.out.println(gender);
		
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{
			con = DBConnection.createConnection();
			String query = "insert into rega(firstname,lastname,age,contactno,userid,password,gender) values(?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
			preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
			preparedStatement.setString(1, firstName);
			preparedStatement.setString(2, lastName);
			preparedStatement.setString(3, age);
			preparedStatement.setString(4, contact);
			preparedStatement.setString(5, userId);
			preparedStatement.setString(6, password);
			preparedStatement.setString(7, gender);
			int i= preparedStatement.executeUpdate();
			if (i!=0)  //Just to ensure data has been inserted into the database
			return "SUCCESS"; 
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	}
}