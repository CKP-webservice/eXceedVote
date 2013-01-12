package com.ckp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ckp.model.Theme;

/**
 * Servlet implementation class VoteServlet
 */
public class SetThemeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetThemeServlet() {
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
		int theme = Integer.parseInt(request.getParameter("theme"));
		switch(theme)
		{
			case 1: Theme.getInstance().setTheme("<link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\">");
			break;
			case 2: Theme.getInstance().setTheme("<link href=\"css/Amelia.css\" rel=\"stylesheet\">");
			break;
			case 3: Theme.getInstance().setTheme("<link href=\"css/Cerulean.css\" rel=\"stylesheet\">");
			break;
			case 4: Theme.getInstance().setTheme("<link href=\"css/Cosmo.css\" rel=\"stylesheet\">");
			break;
			case 5: Theme.getInstance().setTheme("<link href=\"css/Cyborg.css\" rel=\"stylesheet\">");
			break;
			case 6: Theme.getInstance().setTheme("<link href=\"css/Journal.css\" rel=\"stylesheet\">");
			break;
			case 7: Theme.getInstance().setTheme("<link href=\"css/Readable.css\" rel=\"stylesheet\">");
			break;
			case 8: Theme.getInstance().setTheme("<link href=\"css/Simplex.css\" rel=\"stylesheet\">");
			break;
			case 9: Theme.getInstance().setTheme("<link href=\"css/Slate.css\" rel=\"stylesheet\">");
			break;
			case 10: Theme.getInstance().setTheme("<link href=\"css/Spacelab.css\" rel=\"stylesheet\">");
			break;
			case 11: Theme.getInstance().setTheme("<link href=\"css/Spruce.css\" rel=\"stylesheet\">");
			break;
			case 12: Theme.getInstance().setTheme("<link href=\"css/Superhero.css\" rel=\"stylesheet\">");
			break;
			case 13: Theme.getInstance().setTheme("<link href=\"css/United.css\" rel=\"stylesheet\">");
			break;
		}
		Theme.getInstance().setId(theme+"");
		response.sendRedirect("AdminOtherSettingPage.jsp");
	}
}
