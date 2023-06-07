package com.jsp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dto.User;
import com.jsp.services.UserService;
@WebServlet("/signUpuser")
public class SignUpController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("id"));
		String name= req.getParameter("name");
		String address= req.getParameter("address");
		String email= req.getParameter("email");
		String dob = req.getParameter("dob");
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setAddress(address);
		user.setEmail(email);
		user.setDob(dob);
		user.setUserName(userName);
		user.setPassword(password);
		
		UserService service = new UserService();
		User user2 = service.signUpUser(user);
		
		if(user2 != null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
			dispatcher.forward(req, resp);
		}
		else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("signUpuser.jsp");
			dispatcher.include(req, resp);
		}


		
		
	}
}
