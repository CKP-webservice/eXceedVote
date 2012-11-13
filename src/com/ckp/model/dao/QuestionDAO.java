package com.ckp.model.dao;

import java.util.List;

import com.ckp.model.Question;

public interface QuestionDAO {
	public Question find(int id);
	public void save(Question question);
	public void delete(Question question);
	public List<Question> findAll();
	public List<Question> query(String q);
}
