package com.jsp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.dto.User;

public class Userdao  {
	User user = new User();
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("prashi");
	
	public User signUp(User user) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();
		return user;
	}
	public List<User> login(User user) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("select a from User a where email=?1 and password=?2");
		query.setParameter(1, user.getEmail());
		query.setParameter(2, user.getPassword());
		
		List<User> list = query.getResultList();
		return list;
	}
}
