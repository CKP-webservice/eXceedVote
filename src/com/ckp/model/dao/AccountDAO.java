package com.ckp.model.dao;

import java.util.List;

import com.ckp.model.Account;

public interface AccountDAO {
	public Account find(String username,String password);
	public void save(Account account);
	public void delete(Account account);
	public List<Account> findAll();
	public List<Account> query(String q);
}
