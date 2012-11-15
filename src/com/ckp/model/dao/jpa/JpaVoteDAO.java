package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;

import com.ckp.model.Vote;
import com.ckp.model.dao.VoteDAO;

public class JpaVoteDAO implements VoteDAO {

	private EntityManager em;
	public JpaVoteDAO(EntityManager em)
	{
		this.em = em;
	}
	@Override
	public Vote find(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Vote vote) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Vote vote) {
		// TODO Auto-generated method stub
		
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
