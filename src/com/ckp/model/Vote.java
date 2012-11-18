package com.ckp.model;

import javax.persistence.*;

@Entity
@Table(name="vote")
public class Vote {
	private int questionID;
	private int projectID;
	private int userID;
	@Id
	private int id;
	
	public Vote()
	{
		
	}
	public Vote(int questionID, int projectID, int userID)
	{
		this.questionID = questionID;
		this.projectID = projectID;
		this.userID = userID;
	}
	
	public void setQuestionID(int id)
	{
		this.questionID = id;
	}
	
	public int getQuestionID()
	{
		return questionID;
	}
	
	public void setProjectID(int id)
	{
		this.projectID = id;
	}
	
	public int getProjectID()
	{
		return projectID;
	}
	
	public void setUserID(int id)
	{
		this.userID = id;
	}
	
	public int getUserID()
	{
		return userID;
	}
}
