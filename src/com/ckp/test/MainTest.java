package com.ckp.test;

import java.util.HashMap;
import java.util.List;

import com.ckp.model.ProjectResult;
import com.ckp.model.Question;
import com.ckp.model.Ranking;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.QuestionDAO;
import com.ckp.model.dao.VoteDAO;

public class MainTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Ranking rank = new Ranking();
		HashMap<Question, List<ProjectResult>> rankmap = rank.getRankMap();
		for(Question question : rankmap.keySet())
		{
			for(ProjectResult pr : rankmap.get(question))
			{
				System.out.println(pr.getScore());
			}
		}
	}

}
