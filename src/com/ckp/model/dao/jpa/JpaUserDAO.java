package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;

import com.ckp.model.User;
import com.ckp.model.dao.UserDAO;

public class JpaUserDAO implements UserDAO {

	private EntityManager em;
	public JpaUserDAO(EntityManager em)
	{
		this.em = em;
	}
	@Override
	public User find(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> query(String q) {
		// TODO Auto-generated method stub
		return null;
	}

}
