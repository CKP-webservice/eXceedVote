<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<%@ page import="com.ckp.model.Project" %>
<%@ page import="com.ckp.model.Vote" %>
<%@ page import="com.ckp.model.Role" %>
<%@ page import="com.ckp.model.Time" %>
<%@ page import="com.ckp.model.Theme" %>
<%@ page import="com.ckp.model.dao.DaoFactory" %>
<%@ page import="com.ckp.model.dao.ProjectDAO" %>
<%@ page import="com.ckp.model.Question" %>
<%@ page import="com.ckp.model.dao.QuestionDAO" %>
<%@ page import="com.ckp.model.dao.VoteDAO" %>
<%@ page import="com.ckp.model.dao.RoleDAO" %>
<%@ page import="com.ckp.model.dao.TimeDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	String s = (String)session.getAttribute("isLogin");
	if(s == null || s.equals("") || s.equals("no") || session == null)
	{
%>
	<jsp:forward page="LoginPage.jsp"></jsp:forward>
<%
	}
	int userid = (Integer)session.getAttribute("userID");
	ProjectDAO projectdao = DaoFactory.getInstance().getProjectDAO();
	List<Project> projects = projectdao.findAll();
	QuestionDAO questiondao = DaoFactory.getInstance().getQuestionDAO();
	List<Question> questions = questiondao.findAll();
	VoteDAO votedao = DaoFactory.getInstance().getVoteDAO();
	List<Integer> remains = new ArrayList<Integer>();
	int roleId = (Integer)session.getAttribute("userRole");
	int teamId = (Integer)session.getAttribute("userTeam");
	RoleDAO roledao = DaoFactory.getInstance().getRoleDAO();
	Role role = roledao.find(roleId);
	int limit = role.getVoteLimit();
	TimeDAO timedao = DaoFactory.getInstance().getTimeDAO();
	Time time = timedao.find(1);
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
    <% out.println(Theme.getInstance().getTheme()); %>
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
    <link href="css/jquery.countdown.css" rel="stylesheet">
    <!-- Add jQuery library -->
	<script type="text/javascript" src="fancybox/lib/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.countdown.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="fancybox/source/jquery.fancybox.js?v=2.0.6"></script>
	<link rel="stylesheet" type="text/css" href="fancybox/source/jquery.fancybox.css?v=2.0.6" media="screen" />
	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
	</style>
	<script type="text/javascript" src="js/web.js"></script>
    <script src="js/vote.js"></script>
    <script>
    $(function () {
    	var austDay = new Date();
    	//austDay = new Date(austDay.getFullYear() + 1, 1 - 1, 26);
    	<% out.println("austDay = new Date(" + time.getYear() + ", " + time.getMonth() + ", " + time.getDay() + ", " + time.getHour() + ", " + time.getMin() + ", " + time.getSec() + ", 0);"); %>
    	$('#defaultCountdown').countdown({until: austDay, onExpiry : function(){
    		$('button').attr("disabled", "disabled");
    		$('button').removeClass("btn btn-large btn-primary").addClass("btn btn-large btn-danger");
    		$('button').html("<h2>Time out</h2>");
    	}});
    });
    </script>
    <script>
    	$(document).ready(function() {
    	<%
    		for(Question question : questions)
    		{
    			out.println("$('#question" + question.getId() +"-select').change(function() {");
    			out.println("var optionValue = $('#question" + question.getId() +"-select').val();");
    			String hide = "";
    			int countproject = 1;
    			for(Project project : projects)
    			{
    				if(countproject == projects.size()) hide += "#project" + question.getId() + "" + project.getId();
    				else hide += "#project" + question.getId() + "" + project.getId() + ", ";
    				countproject++;
    			}
    			out.println("$('" + hide + "').hide(400);");
    			out.println("switch(optionValue)");
    			out.println("{");
    			for(Project project : projects)
    			{
    				out.println("case \"" + project.getId() + "\":");
    				out.println("$('#project" + question.getId() + "" + project.getId() + "').show(400);");
    				out.println("break;");
    			}
    			out.println("}");
    			out.println("});");
    		}
    		//out.println("var countdown = new Date(" + time.getYear() + ", " + time.getMonth() + ", " + time.getDay() + ", " + time.getHour() + ", " + time.getMin() + ", " + time.getSec() + ", 0);"); 
    		//out.println("var newYear = new Date();");
    		//out.println("newYear = new Date(2012, 12-1, 25, 21, 00, 00, 00);");
    		//out.println("$('#countdown').countdown({until: newYear});");
    	%>
    	});
    	
    </script>
    
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
                  <% if(roleId == 1) out.println("<li><a href=\"AdminAccountPage.jsp\">Administrator Page</a></li>"); %>
                  <li><a href="LogoutPage.jsp">Log out</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav">
              <li class="active"><a href="VotePage.jsp">Home</a></li>
              <li><a href="ProjectDetails.jsp">Project Details</a></li>
              <% if(teamId != 0) out.println("<li><a href=\"AddProjectPage.jsp\">Add/Edit Project</a></li>"); %>
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
        <div class="hero-unit">
        	
        	<div class="row">
        		<div class="span4"><h2>Time Remaining : </h2></div>
        		<div class="span8"><div id="defaultCountdown" style="width: 500px; height: 55px; font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 36px;"></div></div>
        	</div>
        </div>
        <% 
        	int countid = 1;
        	for(Question question : questions)
        	{
          		out.println("<div class=\"hero-unit\" id=\"t" + countid + "\">");
            	out.println("<div class=\"row-fluid\"><div class=\"span6\"><h1>" + question.getTitle() + "</h1></div>");
            	out.println("<div class=\"span6\" id=\"xxx\">");
            	List<Vote> temp = votedao.findByQuestionIdAndUserId(question.getId(), userid);
            	int remaining = limit - temp.size();
            	out.println("<h3 id=\"remain" + question.getId() + "\" style=\"float: right; margin-top: 30px;\">Ballot Remaining : " + remaining + "</h3></div>");
            	out.println("</div>");
            	out.println("<br>");
            	out.println("<br>");
            	out.println("<div class=\"row-fluid\">");	
	           	if(remaining == 0) out.println("<select disabled=\"disabled\" name=\"question" + question.getId() + "-select\" id=\"question" + question.getId() + "-select\" class=\"span5\">");
	           	else out.println("<select name=\"question" + question.getId() + "-select\" id=\"question" + question.getId() + "-select\" class=\"span5\">");
	            int countProject = 1;
	           	for(Project project : projects)
	            {
	            	out.println("<option value=\"" + project.getId() + "\">" + project.getProjectName() + "</option>");
	            	//countProject++;
	            }	
	            out.println("</select>");
	            if(remaining == 0) out.println("<button disabled=\"\" class=\"btn btn-large btn-danger pull-right\" type=\"button\" id=\"question" + countid + "-vote\" onclick='showModal(\"" + countid + "\")' style=\"margin-top: -15px\"><h2>Vote Successed</h2></button>");
	            else if(time.checkTimeout()) out.println("<button disabled=\"\" class=\"btn btn-large btn-danger pull-right\" type=\"button\" id=\"question" + countid + "-vote\" onclick='showModal(\"" + countid + "\")' style=\"margin-top: -15px\"><h2>Time out</h2></button>");
	            else out.println("<button class=\"btn btn-large btn-primary pull-right\" type=\"button\" id=\"question" + countid + "-vote\" onclick='showModal(\"" + countid + "\")' style=\"margin-top: -15px\"><h2>Vote Project</h2></button>");
  				out.println("<div id=\"modal" + countid + "\" class=\"modal hide fade in\" style=\"display: none;\">");  
				out.println("<div class=\"modal-header\" id=\"modal-header" + countid + "\">");  
				out.println("<a class=\"close\" data-dismiss=\"modal\">×</a>");  
				out.println("<h3>" + question.getTitle() + "</h3>");  
				out.println("</div>");  
				out.println("<div class=\"modal-body\" id=\"modal-body" + countid +"\">");    
				out.println("<p>Are you sure?</p>");                
				out.println("</div>");  
				out.println("<div class=\"modal-footer\" id=\"modal-footer" + countid + "\">");  
				out.println("<button type=\"submit\" class=\"btn btn-primary\" onclick='ajaxSendPost(\"" + question.getId() + "\", \"question" + countid + "-vote\")' data-dismiss=\"modal\">Save Changes</button>");  
				out.println("<button class=\"btn\" data-dismiss=\"modal\">Close</button>");  
				out.println("</div>");
            	out.println("</div>");
            	int countProject2 = 1;
            	for(Project project : projects)
            	{
            		if(countProject2 == 1) out.println("<div id=\"project" + question.getId() + "" + project.getId() + "\">");
            		else out.println("<div id=\"project" + question.getId() + "" + project.getId() + "\" style=\"display: none;\">");
            		out.println("<h2>" + project.getProjectName() + "</h2>");
	        		out.println("<br>");
	        		out.println("<a class=\"fancybox\" href=\"" + project.getImgURL1() + "\"" + "data-fancybox-group=\"gallery"+ countProject2 +"\"><img src=\"" + project.getImgURL1() + "\" alt=\"\" width=\"240px\" height=\"160px\" style=\"border-radius: 7px; margin: 10px\" /></a>");
					out.println("<a class=\"fancybox\" href=\"" + project.getImgURL2() + "\"" + "data-fancybox-group=\"gallery"+ countProject2 +"\"><img src=\"" + project.getImgURL2() + "\" alt=\"\" width=\"240px\" height=\"160px\" style=\"border-radius: 7px; margin: 10px\" /></a>");
					out.println("<a class=\"fancybox\" href=\"" + project.getImgURL3() + "\"" + "data-fancybox-group=\"gallery"+ countProject2 +"\"><img src=\"" + project.getImgURL3() + "\" alt=\"\" width=\"240px\" height=\"160px\" style=\"border-radius: 7px; margin: 10px\" /></a>");	
	        		out.println("<br><br>");
	        		out.println("<p>" + project.getShortProjectDetail() + "</p>");
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
