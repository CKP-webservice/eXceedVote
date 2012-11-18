package com.ckp.model.dao.jpa;

import java.util.List;

import com.ckp.model.TeamMember;
import com.ckp.model.dao.TeamMemberDAO;
import javax.persistence.EntityManager;

public class JpaTeamMemberDAO implements TeamMemberDAO {

	private EntityManager em;
	public JpaTeamMemberDAO(EntityManager em)
	{
		this.em = em;
	}
	
	@Override
	public TeamMember find(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(TeamMember teamMember) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(TeamMember teamMember) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<TeamMember> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TeamMember> query(String q) {
		// TODO Auto-generated method stub
		return null;
	}

}
