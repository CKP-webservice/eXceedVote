package com.ckp.model.dao;

import java.util.List;

import com.ckp.model.Login_log;
import com.ckp.model.Project;

public interface Login_logDAO {
	public Login_log find(int id);
	public void save(Login_log log);
	public void delete(Login_log log);
	public List<Login_log> findAll();
	public List<Login_log> query(String q);
}
