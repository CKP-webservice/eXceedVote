package com.ckp.model;

import javax.persistence.*;

@Entity
public class Team {
	private String name;
	@Id
	private int id;
	
	public Team()
	{
		
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public String getName()
	{
		return name;
	}
	
	public void setID(int id)
	{
		this.id = id;
	}
	
	public int getID()
	{
		return id;
	}
}
