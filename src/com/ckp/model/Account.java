package com.ckp.model;

public class Account {
	public enum AccountType{
		VOTER,ADMIN
	}
	private AccountType type;
	private String name;
	private String lastName;
	
	public static Account getAccount(String name,String lastName, AccountType type){
		return new Account(name,lastName,type);
	}
	
	private Account(String name,String lastName, AccountType type){
		this.name = name;
		this.lastName = lastName;
		this.type = type;
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
}
