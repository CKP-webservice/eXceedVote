package com.ckp.model;

public class Account {
	public enum AccountType{
		VOTER,ADMIN
	}
	private AccountType type;
	private String name;
	private String lastName;
	private boolean isVote;
	
	public static Account getAccount(String name,String lastName, AccountType type, boolean isVote){
		return new Account(name,lastName,type,isVote);
	}
	
	private Account(String name,String lastName, AccountType type, boolean isVote){
		this.name = name;
		this.lastName = lastName;
		this.type = type;
		this.setVote(isVote);
	}

	public AccountType getType() {
		return type;
	}

	public void setType(AccountType type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public boolean isVote() {
		return isVote;
	}

	public void setVote(boolean isVote) {
		this.isVote = isVote;
	}
}
