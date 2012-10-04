package com.ckp.controller;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;

import com.ckp.model.Account;

public class UserAuthentication {
	static Connection con = null;
	static ResultSet rs = null;

	public static Account login(String username, String password) {
		Account user = Account.getAccount("","",Account.AccountType.VOTER,false);
		Statement stmt = null;
		String searchQuery = "SELECT * FROM users WHERE username='" + username
				+ "' AND password='" + password + "'";
		try {

			con = ConnectionHandler.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean present = rs.next();
			if (!present)
				user.setValid(false);
			else if (present) {
				String name = rs.getString("name");
				String score = rs.getString("score");
				user.setName(name);
				user.setLastName(name);
				user.setValid(true);
				user.setType(Account.AccountType.VOTER);
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