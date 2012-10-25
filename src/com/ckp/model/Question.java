package com.ckp.model;

/**
 * Model from Question
 * @author Kanin Sirisith
 *
 */
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
