package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.ckp.model.Vote;
import com.ckp.model.dao.VoteDAO;

public class JpaVoteDAO implements VoteDAO {

	private EntityManager em;
	public JpaVoteDAO(EntityManager em) {
		this.em = em;
	}
	@Override
	public Vote find(int id) {
		return em.find(Vote.class, id);
	}

	@Override
	public void save(Vote vote) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(vote);
		tx.commit();
	}

	@Override
	public void delete(Vote vote) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.remove(vote);
		tx.commit();
	}

	@Override
	public List<Vote> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vote> query(String q) {
		// TODO Auto-generated method stub
		return null;
	}

}
