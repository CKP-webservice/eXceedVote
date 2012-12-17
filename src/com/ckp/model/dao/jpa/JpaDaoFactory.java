package com.ckp.model.dao.jpa;

import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.Login_logDAO;
import com.ckp.model.dao.ProjectDAO;
import com.ckp.model.dao.QuestionDAO;
import com.ckp.model.dao.RoleDAO;
import com.ckp.model.dao.TeamDAO;
import com.ckp.model.dao.TeamMemberDAO;
import com.ckp.model.dao.TimeDAO;
import com.ckp.model.dao.UserDAO;
import com.ckp.model.dao.VoteDAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaDaoFactory extends DaoFactory{

	private EntityManager em;
	private EntityManagerFactory emf;
	private JpaProjectDAO projectDAO;
	private JpaQuestionDAO questionDAO;
	private JpaTeamDAO teamDAO;
	private JpaTeamMemberDAO teamMemberDAO;
	private JpaUserDAO userDAO;
	private JpaVoteDAO voteDAO;
	private Login_logDAO login_logDAO;
<<<<<<< HEAD
	private TimeDAO timeDAO;
=======
	private RoleDAO roleDAO;
>>>>>>> Add Role RoldDAO class
	
	public JpaDaoFactory()
	{
		emf = Persistence.createEntityManagerFactory("eXceedVote");
		System.out.println(emf.toString());
		em = emf.createEntityManager();
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


	@Override
	public Login_logDAO getLogin_logDAO() {
		if(login_logDAO == null) login_logDAO = new JpaLogin_logDAO(em);
		return login_logDAO;
	}
	
	@Override
	public TimeDAO getTimeDAO() {
		if(timeDAO == null) timeDAO = new JpaTimeDAO(em);
		return timeDAO;
	}


	@Override
	public RoleDAO getRoleDAO() {
		if(roleDAO == null) roleDAO = new JpaRoleDAO(em);
		return roleDAO;
	}

}
