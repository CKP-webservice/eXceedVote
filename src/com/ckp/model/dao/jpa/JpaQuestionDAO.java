package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;

import com.ckp.model.Question;
import com.ckp.model.dao.QuestionDAO;

public class JpaQuestionDAO implements QuestionDAO {

	private EntityManager em;
	public JpaQuestionDAO(EntityManager em)
	{
		this.em = em;
	}
	@Override
	public Question find(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Question question) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Question question) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Question> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Question> query(String q) {
		// TODO Auto-generated method stub
		return null;
	}

}
