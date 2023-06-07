package com.jsp.services;

import java.util.List;

import com.jsp.dao.Userdao;
import com.jsp.dto.User;

public class UserService {
	Userdao userdao = new Userdao();
	public User signUpUser(User user) {
		return userdao.signUp(user);
	}
	public List<User> login(User user){
		return userdao.login(user);
	}
}
