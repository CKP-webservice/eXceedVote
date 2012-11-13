package com.ckp.controller;

import java.sql.*;

import com.ckp.model.Account;

public class UserAuthentication {
	static Connection con = null;
	static ResultSet rs = null;

	public static Account login(String username, String password) {
		Account user = Account.getAccount("","",Account.AccountType.VOTER,false);
		Statement stmt = null;
		// ? represent placeholders for inserting arguments
		//String prepQuery = "SELECT * FROM account WHERE username=? AND password=?";
		String prepQuery = "SELECT user.first_name,user.last_name,account.type FROM account,user WHERE username = ? AND password = ? AND user.user_id = account.acc_id;";
		try {

			con = ConnectionHandler.getConnection();
			stmt = con.createStatement();
			// use a prepared statement to avoid sql injection
			PreparedStatement pstmt = con.prepareStatement(prepQuery);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			//rs = stmt.executeQuery(searchQuery);
			boolean present = rs.next();
			if (!present)
				user.setValid(false);
			else if (present) {
				String name = rs.getString("user.first_name");
				String lastName = rs.getString("user.last_name");
				String type = rs.getString("account.type");
				user.setName(name);
				user.setLastName(lastName);
				user.setValid(true);
				if(type.equals("v")) {
					user.setType(Account.AccountType.VOTER);
				}
				else if (type.equals("a")) {
					user.setType(Account.AccountType.ADMIN);
				}
				//type == "v" ? user.setType(Account.AccountType.VOTER) : user.setType(Account.AccountType.ADMIN);
				//user.setType(Account.AccountType.VOTER);
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

		return user;
	}
}