package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;

import com.ckp.model.Team;
import com.ckp.model.dao.TeamDAO;

public class JpaTeamDAO implements TeamDAO {

	private EntityManager em;
	public JpaTeamDAO(EntityManager em)
	{
		this.em = em;
	}
	@Override
	public Team find(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Team team) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Team team) {
		// TODO Auto-generated method stub
		
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
