package com.ckp.model;

/**
 * Model for Account
 * @author Kanin Sirisith
 */
public class Account {
	public enum AccountType{
		VOTER,ADMIN;
	}
	private AccountType type;
	private String name;
	private String lastName;
	private boolean isVote;
	private boolean valid;
	private int id;
	/*
	 * get Account from this class
	 * @return Account object
	 */
	public static Account getAccount(String name,String lastName, AccountType type, boolean isVote){
		return new Account(name,lastName,type,isVote);
	}
	
	/*
	 * Constructor for Account Class
	 */
	private Account(String name,String lastName, AccountType type, boolean isVote){
		this.name = name;
		this.lastName = lastName;
		this.type = type;
		this.setVote(isVote);
	}

	/*
	 * get type
	 * return AccountType
	 */
	public AccountType getType() {
		return type;
	}

	/*
	 * set type
	 * @param Accounttype
	 */
	public void setType(AccountType type) {
		this.type = type;
	}
	
	/*
	 * get name
	 * @return name 
	 */
	public String getName() {
		return name;
	}
	
	/*
	 * @param name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/*
	 * @return lastname
	 */
	public String getLastName() {
		return lastName;
	}

	/*
	 * @param lastname
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/*
	 * check for vote
	 * @return true if can vote, false if can't vote
	 */
	public boolean isVote() {
		return isVote;
	}

	/*
	 * @param isVote
	 */
	public void setVote(boolean isVote) {
		this.isVote = isVote;
	}
	
	/*
	 * check for valid
	 * @return true if valid, false if invalid
	 */
	public boolean isValid(){
		return valid;
	}
	
	/*
	 * @param valid
	 */
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	
}
