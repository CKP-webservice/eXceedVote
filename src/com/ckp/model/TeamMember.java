package com.ckp.model;

public class TeamMember {
	public int teamID;
	public int userID;
	
	public TeamMember(int teamID, int userID)
	{
		this.teamID = teamID;
		this.userID = userID;
	}
	
	public void setTeamID(int id)
	{
		this.teamID = id;
	}
	
	public int getTeamID()
	{
		return teamID;
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
