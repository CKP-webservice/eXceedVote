package com.ckp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.ckp.model.Account;
import com.ckp.model.dao.AccountDAO;

public class JpaAccountDAO implements AccountDAO {

	private EntityManager em;
	public JpaAccountDAO(EntityManager em)
	{
		this.em = em;
	}
	@Override
	public Account find(int id) {
		return em.find(Account.class, id);
	}

	@Override
	public void save(Account account) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(account);
		tx.commit();
	}

	@Override
	public void delete(Account account) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.remove(account);
		tx.commit();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Account> findAll() {
		String query = "SELECT * FROM account";
		return em.createQuery(query).getResultList();
	}

	@Override
	public List<Account> query(String q) {
		// TODO Auto-generated method stub
		return null;
	}

}
