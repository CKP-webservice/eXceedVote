package com.ckp.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Model from Question
 * @author Kanin Sirisith
 *
 */
@Entity
@Table(name ="question")
public class Question {
	private String question;
	
	/**
	 * Constructor for Question class
	 * @param question
	 */
	private Question(String question) {
		this.question = question;
	}
	
	/**
	 * 
	 * @param question
	 * @return
	 */
	public static Question getQuestion(String question) {
		return new Question(question);
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}
}
