package com.ckp.model.dao;

import java.util.List;
import com.ckp.model.Time;

public interface TimeDAO {

	public Time find(int id);
	public void save(Time time);
	public void delete(Time time);
	public List<Time> findAll();
	public List<Time> query(String q);
}
