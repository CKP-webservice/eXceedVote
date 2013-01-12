package com.ckp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ckp.model.Project;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.ProjectDAO;
/**
 * Servlet implementation class VoteServlet
 */
public class AddProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		int teamId = (Integer)session.getAttribute("userTeam");
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String short_description = request.getParameter("short_description");
		String imageurl1 = request.getParameter("imageurl1");
		String imageurl2 = request.getParameter("imageurl2");
		String imageurl3 = request.getParameter("imageurl3");
		response.sendRedirect("EditProjectPage.jsp");
		ProjectDAO projectdao = DaoFactory.getInstance().getProjectDAO();
		Project project = projectdao.find(teamId);
		project.setProjectName(name);
		project.setProjectDetail(description);
		project.setShortProjectDetail(short_description);
		project.setImgURL1(imageurl1);
		project.setImgURL2(imageurl2);
		project.setImgURL3(imageurl3);
		projectdao.save(project);
	}
}
