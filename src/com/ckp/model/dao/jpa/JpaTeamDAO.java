package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.ckp.model.Team;
import com.ckp.model.dao.TeamDAO;

public class JpaTeamDAO implements TeamDAO {

	private EntityManager em;
	public JpaTeamDAO(EntityManager em) {
		this.em = em;
	}
	@Override
	public Team find(int id) {
		return em.find(Team.class , id);
	}

	@Override
	public void save(Team team) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(team);
		tx.commit();
	}

	@Override
	public void delete(Team team) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.remove(team);
		tx.commit();
	}

	@Override
	public List<Team> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Team> query(String q) {
		// TODO Auto-generated method stub
		return null;
	}

}
