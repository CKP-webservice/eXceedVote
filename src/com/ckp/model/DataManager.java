package com.ckp.model;

import javax.servlet.http.HttpSession;

import com.ckp.controller.UserAuthentication;
import com.ckp.model.Account;

public class DataManager {
	
	public static Account loadAccount(String username, String password) {
		return null;
	}
	
	public static QuestionSet loadQuestionSet() {
		
		return null;
	}
	
	public static ProjectCatalog loadProjectCatalog() {
		//TODO load project from database and create project Object and
		//		add to projectCatalog. You have 2 way to add project to ProjectCatalog.
		//		see method in class
		return null;
	}
	
}
