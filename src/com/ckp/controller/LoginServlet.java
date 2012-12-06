package com.ckp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ckp.controller.UserAuthentication;
import com.ckp.model.Login_log;
import com.ckp.model.User;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.Login_logDAO;
/**
 * @author Kanin Sirisith
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * doGet
	 * Auto-generate method do nothing
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * Method doPost
	 * get username and password from form sent by loginPage.jsp then authenticate user by sent call login() method
	 * from UserAuthentication class then set session for user
	 * @param
	 * @return
	 * @exception throw ServletException , IOException
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		if (username == null || username == "" || password == null
				|| password == "") {
			request.setAttribute("message","Please enter Username and password");
			request.getRequestDispatcher("LoginPage.jsp").forward(request,
					response);
		} else {
			try {
				User user = UserAuthentication.login(username,password);
				if (user != null) {
					HttpSession session = request.getSession(true);
					System.out.println(session.toString());
					session.setAttribute("user", user);
					session.setAttribute("isLogin", "yes");
					session.setAttribute("ip", request.getRemoteAddr());
					session.setAttribute("userID", user.getId());
					Login_log log = new Login_log(session);
					Login_logDAO loginlog = DaoFactory.getInstance().getLogin_logDAO();
					loginlog.save(log);
					response.sendRedirect("VotePage.jsp");
				}
				else {
					request.setAttribute("message","Username or Password is incorrect.");
					request.getRequestDispatcher("LoginPage.jsp").forward(request,response);
				}
			} catch (Throwable theException) {
				System.out.println(theException);
			}
		}
	}

}
