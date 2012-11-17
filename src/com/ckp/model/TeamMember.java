package com.ckp.model;

import javax.persistence.*;

@Entity
public class TeamMember {
	private int teamID;
	private int userID;
	@Id
	private int id;
	
	public TeamMember()
	{
		
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
