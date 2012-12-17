package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.ckp.model.Time;
import com.ckp.model.dao.*;

public class JpaTimeDAO implements TimeDAO {

	private EntityManager em;
	public JpaTimeDAO(EntityManager em) {
		this.em = em;
	}
	
	@Override
	public Time find(int id) {
		return em.find(Time.class, id);
	}

	@Override
	public void save(Time time) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(time);
		tx.commit();
		
	}

	@Override
	public void delete(Time time) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.remove(time);
		tx.commit();
	}

	@Override
	public List<Time> findAll() {
		String query = "SELECT t FROM Time t";
		return em.createQuery(query).getResultList();
	}

	@Override
	public List<Time> query(String q) {
		// TODO Auto-generated method stub
		return null;
	}

}
