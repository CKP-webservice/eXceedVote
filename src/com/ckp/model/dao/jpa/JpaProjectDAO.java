package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;

import com.ckp.model.Project;
import com.ckp.model.dao.ProjectDAO;

public class JpaProjectDAO implements ProjectDAO {

	private EntityManager em;
	public JpaProjectDAO(EntityManager em)
	{
		this.em = em;
	}
	@Override
	public Project find(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Project project) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Project project) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Project> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Project> query(String q) {
		// TODO Auto-generated method stub
		return null;
	}

}
