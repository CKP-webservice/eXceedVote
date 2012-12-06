package com.ckp.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.ProjectDAO;
import com.ckp.model.dao.QuestionDAO;
import com.ckp.model.dao.VoteDAO;

public class Ranking {
	
	private HashMap<Question,List<ProjectResult>> rankingMap;
	public Ranking() {
		this.rankingMap = new HashMap<Question, List<ProjectResult>>();
		load();
	}
	private void load()
	{
		DaoFactory daoFactory = DaoFactory.getInstance();
		QuestionDAO questionDAO = daoFactory.getQuestionDAO();
		VoteDAO voteDAO = daoFactory.getVoteDAO();
		ProjectDAO projectDAO = daoFactory.getProjectDAO();
		List<Question> questionList = questionDAO.findAll();
		List<Project> projectList = projectDAO.findAll();
		for(Question q : questionList)
		{
			List<Vote> voteList = voteDAO.findByQuestion(q);
			List<ProjectResult> projectResultList = getInitListProjectResult(projectList);
			for(Vote v : voteList)
			{
				for(int i = 0; i < projectResultList.size(); i++)
				{
					if(projectResultList.get(i).getProject().getId() == v.getProjectID())
					{
						projectResultList.get(i).increaseScore();
						break;
					}
				}
			}
			this.rankingMap.put(q, projectResultList);
			
		}
	}
	
	private List<ProjectResult> getInitListProjectResult(List<Project> projectList)
	{
		List<ProjectResult> list = new ArrayList<ProjectResult>();
		for(Project p : projectList)
		{
			ProjectResult temp = new ProjectResult(p);
			list.add(temp);
		}
		return list;
	}
	
	public HashMap<Question,List<ProjectResult>> getRankMap()
	{
		return this.rankingMap;
	}
}
