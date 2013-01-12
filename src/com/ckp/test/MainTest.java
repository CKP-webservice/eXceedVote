package com.ckp.test;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.eclipse.persistence.internal.helper.SimpleDatabaseType;

import com.ckp.controller.Encryptor;
import com.ckp.model.ProjectResult;
import com.ckp.model.Question;
import com.ckp.model.Ranking;
import com.ckp.model.User;
import com.ckp.model.Vote;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.QuestionDAO;
import com.ckp.model.dao.UserDAO;
import com.ckp.model.dao.VoteDAO;

public class MainTest {

	/**
	 * @param args
	 * @throws InterruptedException
	 */
	public static void main(String[] args) {
		InputStream in = null;
		String path = "src/account.csv";
		if (in == null) {
			// open as local file
			ClassLoader loader = Thread.currentThread().getContextClassLoader();
			in = loader.getResourceAsStream(path);
			if (in == null)
				try {
					// try again using file path
					in = new FileInputStream(path);
				} catch (IOException ioe) {
					System.err.println("Couldn't open file " + path);
					// System.out.println(ioe);
				}
		}
		//System.out.println(in == null);
		BufferedReader reader = new BufferedReader(new InputStreamReader(in) );
    	String line = null;
    	try {
    		UserDAO udao = DaoFactory.getInstance().getUserDAO();
			while ((line=reader.readLine()) != null) {
				// for debugging
				//System.out.println( "readLine: " + line );
				if (line.isEmpty()) continue;
				line = line.trim();
				if (line.startsWith("#")) continue; // skip comment line
				String [] words = line.split("\\s*,\\s*");
				//System.out.println(words[0] + " " + words[1] + " " + words[2]);
				User user = new User();
				//user.setId(Integer.parseInt(words[0]));
				user.setName(words[1]);
				user.setLastName(words[2]);
				user.setUsername(words[0]);
				String pw = words[2];
				String dpw = Encryptor.encryptMessageMD5(pw);
				user.setPassword(dpw);
				user.setRoleId(4);
				udao.save(user);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}