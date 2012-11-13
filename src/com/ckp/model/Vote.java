package com.ckp.model;

public class Vote {
	public int questionID;
	public int projectID;
	public int userID;
	
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
