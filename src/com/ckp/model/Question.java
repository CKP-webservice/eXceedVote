package com.ckp.model;

public class Question {
	private String question;
	
	private Question(String question) {
		this.question = question;
	}
	
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
