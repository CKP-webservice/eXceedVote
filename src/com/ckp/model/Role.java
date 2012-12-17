package com.ckp.model;

import javax.persistence.*;

@Entity
public class Role {
	private int limit;
	private String name;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	public Role()
	{
		
	}
	public Role(String name, int id, int limit)
	{
		this.name = name;
		this.id = id;
		this.limit = limit;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public String getName()
	{
		return name;
	}

	public int getID()
	{
		return id;
	}
	
	public int getLimit() {
		return limit;
	}
}
