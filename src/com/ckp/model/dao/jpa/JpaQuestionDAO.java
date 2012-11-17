package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.ckp.model.Question;
import com.ckp.model.dao.QuestionDAO;

public class JpaQuestionDAO implements QuestionDAO {

	private EntityManager em;
	public JpaQuestionDAO(EntityManager em) {
		this.em = em;
	}
	@Override
	public Question find(int id) {
		return em.find(Question.class , id);
	}

	@Override
	public void save(Question question) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(question);
		tx.commit();

	}

	@Override
	public void delete(Question question) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(question);
		tx.commit();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Question> findAll() {
		String query = "SELECT * FROM question";
		return em.createQuery(query).getResultList();
	}

	@Override
	public List<Question> query(String q) {
		// TODO Auto-generated method stub
		return null;
	}

}
