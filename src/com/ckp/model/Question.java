package com.ckp.model;

import javax.persistence.*;

/**
 * Model from Question
 * @author Kanin Sirisith
 *
 */
@Entity
@Table(name ="question")
public class Question {
	private String title;
	@Id
	private int id;
	
	/**
	 * Constructor for Question class
	 * @param question
	 */
	public Question()
	{
		
	}
	
	public Question(String title) {
		this.setTitle(title);
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
