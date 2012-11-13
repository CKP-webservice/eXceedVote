package com.ckp.model.dao;

import java.util.List;

import com.ckp.model.Vote;

public interface VoteDAO {
	public Vote find(int id);
	public void save(Vote vote);
	public void delete(Vote vote);
	public List<Vote> findAll();
	public List<Vote> query(String q);
}