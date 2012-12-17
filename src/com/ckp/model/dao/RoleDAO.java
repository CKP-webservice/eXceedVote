package com.ckp.model.dao;

import java.util.List;

import com.ckp.model.Role;

public interface RoleDAO {
	public Role find(int id);
	public void save(Role Role);
	public void delete(Role Role);
	public List<Role> findAll();
	public List<Role> query(String q);
}
