package com.jsp.controller;

import java.io.IOException;
import java.util.List;

import javax.naming.ldap.Rdn;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dto.User;
import com.jsp.services.UserService;
@WebServlet("/loginUser")
public class LoginController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		
		UserService userService =  new UserService();
		List<User> user2=userService.login(user);
		
		if(user2 != null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("Dashboard.jsp");
			dispatcher.forward(req, resp);
		}
		else {
			RequestDispatcher  dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.include(req, resp);
		}
	}
}
