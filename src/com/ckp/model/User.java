package com.ckp.model;

import javax.persistence.*;

@Entity
public class User {
	@Id
	private int id;
	private String firstName;
	private String lastName;
	private int accountID;
	
	public User()
	{
		
	}
	
	public void setFirstName(String name)
	{
		this.firstName = name;
	}
	
	public String getFirstName()
	{
		return firstName;
	}
	
	public void setLastName(String name)
	{
		this.lastName = name;
	}
	
	public String getLastName()
	{
		return lastName;
	}
	
	public void setAccountID(int id)
	{
		this.accountID = id;
	}
	
	public int getAccountID()
	{
		return accountID;
	}
}
