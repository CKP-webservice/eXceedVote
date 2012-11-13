package com.ckp.model;

public class User {
	public int userID;
	public String firstName;
	public String lastName;
	public int accountID;
	
	public User(int userID, String firstName, String lastName, int accountID)
	{
		this.userID = userID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.accountID = accountID;
	}
	
	public void setUserID(int id)
	{
		this.userID = id;
	}
	
	public int getUserID()
	{
		return userID;
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
