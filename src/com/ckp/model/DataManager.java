package com.ckp.model;

import javax.servlet.http.HttpSession;

import com.ckp.controller.UserAuthentication;
import com.ckp.model.Account;

/*
 * manager all file for database
 */
public class DataManager {
	
	/*
	 * load account from database
	 * @param string name and string password
	 * @return Account
	 */
	public static Account loadAccount(String username, String password) {
		return null;
	}
	
	/*
	 * load questionset from database
	 * @return QuestionSet 
	 */
	public static QuestionSet loadQuestionSet() {
		
		return null;
	}
	
	/*
	 * load project catalog from database
	 * @return ProjectCatalog
	 */
	public static ProjectCatalog loadProjectCatalog() {
		//TODO load project from database and create project Object and
		//		add to projectCatalog. You have 2 way to add project to ProjectCatalog.
		//		see method in class
		return null;
	}
	
}
