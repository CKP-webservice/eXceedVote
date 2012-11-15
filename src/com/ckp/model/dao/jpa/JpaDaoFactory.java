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
	private JpaAccountDAO accountDAO;
	private JpaProjectDAO projectDAO;
	private JpaQuestionDAO questionDAO;
	private JpaTeamDAO teamDAO;
	private JpaTeamMemberDAO teamMemberDAO;
	private JpaUserDAO userDAO;
	private JpaVoteDAO voteDAO;
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
		if(projectDAO == null) projectDAO = new JpaProjectDAO(em);
		return projectDAO;
	}

	@Override
	public QuestionDAO getQuestionDAO() {
		if(questionDAO == null) questionDAO = new JpaQuestionDAO(em);
		return questionDAO;
	}

	@Override
	public TeamDAO getTeamDAO() {
		if(teamDAO == null) teamDAO = new JpaTeamDAO(em);
		return teamDAO;
	}

	@Override
	public TeamMemberDAO getTeamMemberDAO() {
		if(teamMemberDAO == null) teamMemberDAO = new JpaTeamMemberDAO(em);
		return teamMemberDAO;
	}

	@Override
	public UserDAO getUserDAO() {
		if(userDAO == null) userDAO = new JpaUserDAO(em);
		return userDAO;
	}

	@Override
	public VoteDAO getVoteDAO() {
		if(voteDAO == null) voteDAO = new JpaVoteDAO(em);
		return voteDAO;
	}

}
