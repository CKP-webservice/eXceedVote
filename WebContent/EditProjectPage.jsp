<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<%@ page import="com.ckp.model.Project" %>
<%@ page import="com.ckp.model.Theme" %>
<%@ page import="com.ckp.model.dao.DaoFactory" %>
<%@ page import="com.ckp.model.dao.ProjectDAO" %>

<%
	String s = (String)session.getAttribute("isLogin");
	if(s == null || s.equals("") || s == "no")
	{
%>
	<jsp:forward page="LoginPage.jsp"></jsp:forward>
<%
	}
	int roleId = (Integer)session.getAttribute("userRole");
	int teamId = (Integer)session.getAttribute("userTeam");
	ProjectDAO projectdao = DaoFactory.getInstance().getProjectDAO();
	Project project = projectdao.find(teamId);
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
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
 	<link href="css/style.css" rel="stylesheet">
 	<link href="css/formvalid.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
	<!-- Add jQuery library -->
	<script type="text/javascript" src="fancybox/lib/jquery-1.8.2.min.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="fancybox/source/jquery.fancybox.js?v=2.0.6"></script>
	<link rel="stylesheet" type="text/css" href="fancybox/source/jquery.fancybox.css?v=2.0.6" media="screen" />

	<script type="text/javascript" src="js/web.js"></script>
	<script type="text/javascript" src="js/date_time.js"></script>
	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
	</style>
	<script src="bootstrap/js/bootstrap.js"></script>
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
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>${user.getName()} ${user.getLastName() }</strong><b class="caret"></b></a>
                <ul class="dropdown-menu">
                 <% if(roleId == 1) out.println("<li><a href=\"AdminAccountPage.jsp\">Administrator Page</a></li>"); %>
                  <li><a href="LogoutPage.jsp">Log out</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav">
              <li><a href="VotePage.jsp">Home</a></li>
              <li><a href="ProjectDetails.jsp">Project Details</a></li>
              <% if(teamId != 0) out.println("<li class=\"active\"><a href=\"AddProjectPage.jsp\">Add/Edit Project</a></li>"); %>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
            <ul class="nav nav-list bs-docs-sidenav affix">
              <li><a href="#t1">Project Detail</a></li>
              <li><a href="#t2">Screenshot</a></li>
            </ul>
        </div><!--/span-->
        <div class="span9">
        	 <form class="form-horizontal" id="addproject-form" method="post" action="addproject-servlet">
	        	 <fieldset>
	        	 <div id="legend"class="">
		        	 <legend id="t1">Project Detail</legend>
		         </div>
		         
		         <div class="control-group">
		         <!-- Text input-->
		         	<label class="control-label" for="name">Project Name</label>
		         	<div class="controls">
		         		<% out.println("<input name=\"name\" id=\"name\" type=\"text\" placeholder='" + project.getProjectName() + "' class=\"input-xxlarge\">"); %>
		         	</div>
		         </div>
		<div class="control-group">
          <!-- Textarea -->
          <label class="control-label" for="description">Description</label>
          <div class="controls">
            <div class="textarea">
                  <% out.println("<textarea name=\"description\" id=\"description\" placeholder='" + project.getProjectDetail() + "' rows=\"8\" style=\"width: 530px\"></textarea>"); %>
            </div>
          </div>
        </div>
        <div class="control-group">
          <!-- Textarea -->
          <label class="control-label" for="short_description">Short Description</label>
          <div class="controls">
            <div class="textarea">
                  <% out.println("<textarea name=\"short_description\" id=\"short_description\" placeholder='" + project.getShortProjectDetail() + "' rows=\"5\" style=\"width: 530px\"></textarea>"); %>
            </div>
          </div>
        </div>
        <div id="legend" class="">
		  	<legend id="t2">Screenshot</legend>
		</div>
		<div class="control-group">
          <label class="control-label" for="imageurl1">Screenshot Link #1</label>
          <!-- File Upload -->
          <div class="controls">
            <% out.println("<input name=\"imageurl1\" id=\"imageurl1\" placeholder='" + project.getImgURL1() + "' class=\"input-xxlarge\" id=\"fileInput1\" type=\"text\">"); %>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="imageurl2">Screenshot Link #2</label>
          <!-- File Upload -->
          <div class="controls">
            <% out.println("<input name=\"imageurl2\" id=\"imageurl2\" placeholder='" + project.getImgURL2() + "' class=\"input-xxlarge\" id=\"fileInput2\" type=\"text\">"); %>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="imageurl3">Screenshot Link #3</label>
          <!-- File Upload -->
          <div class="controls">
            <% out.println("<input name=\"imageurl3\" id=\"imageurl3\" placeholder='" + project.getImgURL3() + "' class=\"input-xxlarge\" id=\"fileInput3\" type=\"text\">"); %>
          </div>
        </div>
	        <div class="form-actions">
		        <button id="save" type="submit" class="btn btn-primary">Save changes</button>
		        <button id="reset" type="reset" class="btn">Cancel</button>
		    </div>
    </fieldset>
  </form>
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; develop by CKP</p>
      </footer>

    </div><!--/.fluid-container-->

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
