<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<%@ page import="com.ckp.model.Project" %>
<%@ page import="com.ckp.model.dao.DaoFactory" %>
<%@ page import="com.ckp.model.dao.ProjectDAO" %>
<%@ page import="com.ckp.model.Question" %>
<%@ page import="com.ckp.model.dao.QuestionDAO" %>
<%@ page import="java.util.List" %>

<%
	String s = (String)session.getAttribute("isLogin");
	if(s == null || s == "" || s == "no")
	{
%>
	<jsp:forward page="LoginPage.jsp"></jsp:forward>
<%
	}
	ProjectDAO projectdao = DaoFactory.getInstance().getProjectDAO();
	List<Project> projects = projectdao.findAll();
	QuestionDAO questiondao = DaoFactory.getInstance().getQuestionDAO();
	List<Question> questions = questiondao.findAll();
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>eXceedVote</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Le styles -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <!-- Add jQuery library -->
	<script type="text/javascript" src="fancybox/lib/jquery-1.8.2.min.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="fancybox/source/jquery.fancybox.js?v=2.0.6"></script>
	<link rel="stylesheet" type="text/css" href="fancybox/source/jquery.fancybox.css?v=2.0.6" media="screen" />
	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
	</style>
	<script type="text/javascript" src="js/web.js"></script>
	<script type="text/javascript" src="js/date_time.js"></script>
    <script src="js/vote.js"></script>
  </head>

  <body data-spy="scroll">

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="VotePage.jsp">eXceed Camp</a>
          <div class="nav-collapse collapse">
            <ul class="nav pull-right">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>${user.getName()} ${user.getLastName() } </strong><b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="AdminAccountPage.jsp">Administrator Page</a></li>
                  <li><a href="#">Log out</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav">
              <li class="active"><a href="VotePage.jsp">Home</a></li>
              <li><a href="ProjectDetails.jsp">Project Details</a></li>
              <li><a href="AddProjectPage.jsp">Add/Edit Project</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
            <ul class="nav nav-list bs-docs-sidenav affix">
              <%
            	int countname = 1;
            	for(Question question : questions)
            	{
              		out.println("<li><a href=\"#t" + countname + "\">" + question.getTitle() + "</a></li>");
              		countname++;
            	}
            %>
            </ul>
        </div><!--/span-->
        <div class="span9">
        <% 
        	int countid = 1;
        	for(Question question : questions)
        	{
          		out.println("<div class=\"hero-unit\" id=\"t" + countid + "\">");
            	out.println("<div class=\"row-fluid\"><h1>" + question.getTitle() + "</h1></div><br><br>");
            	out.println("<div class=\"row-fluid\">");	
	           	out.println("<select name=\"question" + countid + "-select\" id=\"question" + countid + "-select\" class=\"span5\">");
	            int countProject = 1;
	           	for(Project project : projects)
	            {
	            	out.println("<option value=\"" + project.getId() + "\">" + project.getProjectName() + "</option>");
	            	//countProject++;
	            }	
	            out.println("</select>");
	            out.println("<button class=\"btn btn-large btn-primary pull-right\" type=\"button\" id=\"question" + countid + "-vote\" onclick='showModal(\"" + countid + "\")' style=\"margin-top: -15px\"><h2>Vote Project</h2></button>");
  				out.println("<div id=\"modal" + countid + "\" class=\"modal hide fade in\" style=\"display: none;\">");  
				out.println("<div class=\"modal-header\" id=\"modal-header" + countid + "\">");  
				out.println("<a class=\"close\" data-dismiss=\"modal\">�</a>");  
				out.println("<h3>" + question.getTitle() + "</h3>");  
				out.println("</div>");  
				out.println("<div class=\"modal-body\" id=\"modal-body" + countid +"\">");    
				out.println("<p>Are you sure?</p>");                
				out.println("</div>");  
				out.println("<div class=\"modal-footer\" id=\"modal-footer" + countid + "\">");  
				out.println("<button type=\"submit\" class=\"btn btn-primary\" onclick='ajaxSendPost(\"question" + countid + "-select\", \"question" + countid + "-vote\")' data-dismiss=\"modal\">Save Changes</button>");  
				out.println("<button class=\"btn\" data-dismiss=\"modal\">Close</button>");  
				out.println("</div>");
            	out.println("</div>");
            	int countProject2 = 1;
            	for(Project project : projects)
            	{
            		if(countProject2 == 1) out.println("<div id=\"project" + countProject2 + "\">");
            		else out.println("<div id=\"project" + countProject2 + "\" style=\"display: none;\">");
            		out.println("<h2>" + project.getProjectName() + "</h2>");
	        		out.println("<br>");
	        		out.println("<a class=\"fancybox\" href=\"" + project.getImgURL1() + "\"" + "data-fancybox-group=\"gallery"+ countProject2 +"\"><img src=\"" + project.getImgURL1() + "\" alt=\"\" width=\"240px\" height=\"160px\" style=\"border-radius: 7px; margin: 10px\" /></a>");
					out.println("<a class=\"fancybox\" href=\"" + project.getImgURL2() + "\"" + "data-fancybox-group=\"gallery"+ countProject2 +"\"><img src=\"" + project.getImgURL2() + "\" alt=\"\" width=\"240px\" height=\"160px\" style=\"border-radius: 7px; margin: 10px\" /></a>");
					out.println("<a class=\"fancybox\" href=\"" + project.getImgURL3() + "\"" + "data-fancybox-group=\"gallery"+ countProject2 +"\"><img src=\"" + project.getImgURL3() + "\" alt=\"\" width=\"240px\" height=\"160px\" style=\"border-radius: 7px; margin: 10px\" /></a>");	
	        		out.println("<br><br>");
	        		out.println("<p>" + project.getProjectDetail() + "</p>");
            		out.println("</div>");
	        		countProject2++;
            	}	        
	        	out.println("</div>");
	        	out.println("</div>");
	        	countid++;
        	}
	   	%>
        </div><!--/span-->
      </div><!--/row-->

      <hr>
      <footer>
        <p>&copy; develop by CKP</p>
      </footer>
    </div>    
    <script src="js/bootstrap-transition.js"></script>
    <script src="js/bootstrap-alert.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/bootstrap-scrollspy.js"></script>
    <script src="js/bootstrap-tab.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/bootstrap-button.js"></script>
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/bootstrap-carousel.js"></script>
    <script src="js/bootstrap-typeahead.js"></script>
  </body>
</html>
