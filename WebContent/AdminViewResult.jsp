<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<%@ page import="com.ckp.model.Vote" %>
<%@ page import="com.ckp.model.dao.DaoFactory" %>
<%@ page import="com.ckp.model.dao.VoteDAO" %>
<%@ page import="java.util.List" %>

<%
	String s = (String)session.getAttribute("isLogin");
	if(s == null || s == "" || s == "no")
	{
%>
	<jsp:forward page="LoginPage.jsp"></jsp:forward>
<%
	}
	VoteDAO votedao = DaoFactory.getInstance().getVoteDAO();
	List<Vote> votes = votedao.findAll();
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
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <strong>${user.getName()} ${user.getLastName() }</strong><b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="AdminAccountPage.jsp">Administrator Page</a></li>
                  <li><a href="#">Log out</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav">
              <li><a href="VotePage.jsp">Home</a></li>
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
            <ul class="nav nav-list">
                <li class="nav-header">Account Setting</li>
                <li class="active"><a href="AdminAccountPage.jsp">Manage Account</a></li>
                <li><a href="#">Add Account</a></li>
                <li class="nav-header">Vote Setting</li>
                <li><a href="AdminShowRanking.jsp">Show Ranking</a></li>
                <li><a href="AdminViewResult.jsp">View Vote Log</a></li>
                <li><a href="AdminQuestionPage.jsp">Manage Question</a></li>
                <li><a href="#">Add Question</a></li>
                <li class="nav-header">Other Setting</li>
                <li><a href="#">General Setting</a></li>
                <li><a href="#">Set Vote Time</a></li>
                <li class="divider"></li>
                <li><a href="#">Log out</a></li>
            </ul>
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit" id="t1">
          	<table class="table table-striped"> 
          	<thead> 
          		<tr> 
          			<th>ID</th> 
          			<th>Question ID</th>
          			<th>Project ID</th>
          			<th>User ID</th>
          			<th>Vote Time</th>
          			<th>Delete</th>
          		</tr> 
          	</thead> 
          	<tbody> 
          		<%
          			int countacc = 1;
          			for(Vote vote : votes)
         			{
          				out.println("<tr>");
          				out.println("<td>" + countacc + "</td>");
          				out.println("<td>" + vote.getQuestionID() + "</td>");
          				out.println("<td>" + vote.getProjectID() + "</td>");
          				out.println("<td>" + vote.getUserID() + "</td>");
          				out.println("<td>" + vote.getTimestampField() + "</td>");
        				out.println("<td><button class=\"btn btn-danger\" id=\"" + countacc + "\">Delete</button></td>");
          				out.println("</tr>");
          				countacc++;
          				
          			}
          		%> 
          	</tbody> 
          </table>
          </div>
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
