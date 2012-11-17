package com.ckp.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="team")
public class Team {
	public String name;
	public int id;
	
	public Team(String name, int id)
	{
		this.name = name;
		this.id = id;
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
