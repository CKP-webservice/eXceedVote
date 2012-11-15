package com.ckp.model.dao.jpa;

import javax.persistence.*;
import javax.persistence.Persistence;

import com.ckp.model.dao.AccountDAO;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.ProjectDAO;
import com.ckp.model.dao.QuestionDAO;
import com.ckp.model.dao.TeamDAO;
import com.ckp.model.dao.TeamMemberDAO;
import com.ckp.model.dao.UserDAO;
import com.ckp.model.dao.VoteDAO;

public class JpaDaoFactory extends DaoFactory{

	private EntityManager em;
	private EntityManagerFactory emf;
	private AccountDAO accountDAO;
	public JpaDaoFactory()
	{
		emf = Persistence.createEntityManagerFactory("eXceedVote");
		em = emf.createEntityManager();
	}
	@Override
	public AccountDAO getAccountDAO() {
		if(accountDAO == null) accountDAO = new JpaAccountDAO(em);
		return accountDAO;
	}

	@Override
	public ProjectDAO getProjectDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public QuestionDAO getQuestionDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TeamDAO getTeamDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TeamMemberDAO getTeamMemberDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDAO getUserDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public VoteDAO getVoteDAO() {
		// TODO Auto-generated method stub
		return null;
	}

}
