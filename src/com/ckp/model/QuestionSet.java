package com.ckp.model;
import java.util.*;

public class QuestionSet {
	
	private ArrayList<Question> questionList;
	public QuestionSet() {
		questionList = new ArrayList<Question>();
	}
	
	public void addQuestion(Question question) {
		questionList.add(question);
	}
	
}
