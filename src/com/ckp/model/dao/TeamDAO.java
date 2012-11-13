package com.ckp.model.dao;

import java.util.List;

import com.ckp.model.Team;

public interface TeamDAO {
	public Team find(int id);
	public void save(Team team);
	public void delete(Team team);
	public List<Team> findAll();
	public List<Team> query(String q);
}
