package com.ckp.model;

import javax.persistence.*;

@Entity
public class TeamMember {
	private int teamID;
	private int userID;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	public TeamMember()
	{
		
	}
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
