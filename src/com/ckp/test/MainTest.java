package com.ckp.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.eclipse.persistence.internal.helper.SimpleDatabaseType;

import com.ckp.model.ProjectResult;
import com.ckp.model.Question;
import com.ckp.model.Ranking;
import com.ckp.model.Vote;
import com.ckp.model.VoteTime;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.QuestionDAO;
import com.ckp.model.dao.VoteDAO;

public class MainTest {

	/**
	 * @param args
	 * @throws InterruptedException 
	 */
	public static void main(String[] args) {
		
		VoteDAO votedao = DaoFactory.getInstance().getVoteDAO();
		List<Vote> votes = votedao.findAll();
		for(Vote vote : votes)
		{
			System.out.println(vote.getProjectID());
		}
	}
}