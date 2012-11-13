package com.ckp.model;

import javax.servlet.http.HttpSession;

import com.ckp.controller.*;
import com.ckp.model.Account;
import java.sql.*;
import java.sql.Statement;

import com.ckp.controller.ConnectionHandler;
import java.util.List;
import java.util.ArrayList;
/*
 * manager all file for database
 */
public class DataManager {
	private static Statement stmt = null;
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
		List<String> questionList = new ArrayList<String>();
		String prepQuery = "SELECT * FROM question";
		Connection con = null;
		ResultSet rs = null;
		try {
			con = ConnectionHandler.getConnection();
			stmt = con.createStatement();
			// use a prepared statement to avoid sql injection
			PreparedStatement pstmt = con.prepareStatement(prepQuery);
			rs = pstmt.executeQuery();
			boolean present = rs.next();
			if (!present) {
				System.err.println("No Result Found");
				System.exit(1);
			}
			else if (present) {
				do {
					System.out.println(rs.getString("title").toString());
				} while (present = rs.next());
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
				}
				rs = null;
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) {
				}
				stmt = null;
			}

			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
				}

				con = null;
			}
		}
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
