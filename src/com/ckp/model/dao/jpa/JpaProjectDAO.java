package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.ckp.model.Project;
import com.ckp.model.dao.ProjectDAO;

public class JpaProjectDAO implements ProjectDAO {

	private EntityManager em;
	
	public JpaProjectDAO(EntityManager em) {
		this.em = em;
	}
	@Override
	public Project find(int id) {
		return em.find(Project.class , id);
	}

	@Override
	public void save(Project project) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(project);
		tx.commit();

	}

	@Override
	public void delete(Project project) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.remove(project);
		tx.commit();
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
