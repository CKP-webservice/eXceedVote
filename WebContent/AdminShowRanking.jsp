<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<%@ page import="com.ckp.model.Ranking" %>
<%@ page import="com.ckp.model.Question" %>
<%@ page import="com.ckp.model.ProjectResult" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>

<%
	String s = (String)session.getAttribute("isLogin");
	if(s == null || s == "" || s == "no")
	{
%>
	<jsp:forward page="LoginPage.jsp"></jsp:forward>
<%
	}
	Ranking rank = new Ranking();
	HashMap<Question, List<ProjectResult>> rankmap = rank.getRankMap();
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
	<script type="text/javascript" src="js/admin.js"></script>
	<script>
		function showModal() {
			$('#myModal').modal();
		}
		
		
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
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <strong>${user.getName()} ${user.getLastName() }</strong><b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="AdminAccountPage.jsp">Administrator Page</a></li>
                  <li><a href="LogoutPage.jsp">Log out</a></li>
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
                <li><a href="AdminAccountPage.jsp">Manage Account</a></li>
                <li><a href="#" onclick='showAddAccountModal()'>Add Account</a></li>
                <li class="nav-header">Vote Setting</li>
                <li class="active"><a href="AdminShowRanking.jsp">Show Ranking</a></li>
                <li><a href="AdminViewResult.jsp">View Vote Log</a></li>
                <li><a href="AdminQuestionPage.jsp">Manage Question</a></li>
                <li><a href="#" onclick='showAddQuestionModal()'>Add Question</a></li>
                <li class="nav-header">Other Setting</li>
                <li><a href="#">General Setting</a></li>
                <li><a href="#">Set Vote Time</a></li>
                <li class="divider"></li>
                <li><a href="LogoutPage.jsp">Log out</a></li>
            </ul>
        </div><!--/span-->
        <div class="span9" id="panel">
          <div class="hero-unit" id="t1">
          <div id="account-modal" class="modal hide fade in" style="display: none;">  
				<div class="modal-header">  
					<a class="close" data-dismiss="modal">×</a>  
					<h3>Add Account</h3>  
				</div>
				<form class="form-horizontal" id="account-form">  
				<div class="modal-body">       
					<div class="control-group">
		         		<label class="control-label">Username</label>
		         		<div class="controls">
		         			<input name="username" id="username" type="text" class="input-xlarge">
		         		</div>
		         	</div>
		         	<div class="control-group">
		         		<label class="control-label">Password</label>
		         		<div class="controls">
		         			<input name="password" id="password" type="password" class="input-xlarge">
		         		</div>
		         	</div>           
		         	<div class="control-group">
		         		<label class="control-label">First Name</label>
		         		<div class="controls">
		         			<input name="firstname" id="firstname" type="text" class="input-xlarge">
		         		</div>
		         	</div>
		         	<div class="control-group">
		         		<label class="control-label">Last Name</label>
		         		<div class="controls">
		         			<input name="lastname" id="lastname" type="text" class="input-xlarge">
		         		</div>
		         	</div>
		         	<div class="control-group">
		         		<label class="control-label">Role</label>
		         		<div class="controls">
		         			<div class="btn-group" data-toggle="buttons-radio">
  								<button type="button" onClick="$('#role').val('voter');" class="btn active" checked>Voter</button>
  								<button type="button" onClick="$('#role').val('admin');" class="btn">Admin</button>
							</div>
							<input name="role" id="role" type="hidden" value="">
		         		</div>
		         	</div>
				</div>
				<div class="modal-footer"> 
					<button type="button" id="submit-account" class="btn btn-primary" data-dismiss="modal" onclick='sendAddAccount()'>Save Changes</button>  
					<button class="btn" data-dismiss="modal">Close</button>  
				</div>
				</form>
          	</div>
          	<div id="question-modal" class="modal hide fade in" style="display: none;">  
				<div class="modal-header">  
					<a class="close" data-dismiss="modal">×</a>  
					<h3>Add Question</h3>  
				</div>  
				<form class="form-horizontal" id="question-form"> 
				<div class="modal-body">
					<div class="control-group">
		         		<label class="control-label">Question</label>
		         		<div class="controls">
		         			<input name="questionname" id="questionname" type="text" class="input-xlarge">
		         		</div>
		         	</div>                
				</div>
				<div class="modal-footer"> 
					<button type="button" id="submit-question" class="btn btn-primary" data-dismiss="modal" onclick='sendAddQuestion()'>Save Changes</button>  
					<button class="btn" data-dismiss="modal">Close</button>  
				</div>
				</form>
          	</div>
          	<table class="table table-bordered"> 
          	<thead> 
          		<tr> 
          			<th>Question</th> 
          			<th>Ranking#1</th>
          			<th>Ranking#2</th>
          			<th>Ranking#3</th>
          			<th>See more</th>
          		</tr> 
          	</thead> 
          	<tbody> 
          		<%
          			//int countacc = 1;
          			/*for(Vote vote : votes)
         			{
          				out.println("<tr>");
          				out.println("<td>" + countacc + "</td>");
          				out.println("<td>" + vote.getQuestionID() + "</td>");
          				out.println("<td>" + vote.getProjectID() + "</td>");
          				out.println("<td>" + vote.getUserID() + "</td>");
          				out.println("<td>" + vote.getTimestampField() + "</td>");
        				out.println("<td><button class=\"btn btn-danger\" onclick='deleteVote(\"" + vote.getId() +"\")'>Delete</button></td>");
          				out.println("</tr>");
          				countacc++;
          				
          			}*/
          		%>
          		<tr>
          			<td rowspan="2">Popular Vote</td>
          			<td>WorldNote</td>
          			<td>Panda Server</td>
          			<td>Physic Works</td>
          			<td rowspan="2"><a href="#" onclick='showModal()'>See more ranking</a></td>
          		</tr>
          		<tr>
          			<td>Score: 100</td>
          			<td>Score: 70</td>
          			<td>Score: 60</td>
          		</tr>
          	</tbody> 
          </table>
          <div class="modal hide fade" id="myModal">
  			<div class="modal-header">
    		<a class="close" data-dismiss="modal">×</a>
    		<h3>Popular Vote</h3>
 			 </div>
 			 <div class="modal-body">
  				<table class="table table-bordered">
  					<thead>
  						<tr>
  							<th>Ranking</th>
  							<th>Project</th>
  							<th>Score</th>
  						</tr>
  					</thead>
  					<tbody>
  						<tr>
  							<td>1</td>
  							<td>WorldNote</td>
  							<td>100</td>
  						<tr>
  						<tr>
  							<td>2</td>
  							<td>Panda Server</td>
  							<td>70</td>
  						<tr>
  						<tr>
  							<td>2</td>
  							<td>Physic Works</td>
  							<td>60</td>
  						<tr>
  					</tbody>
  				</table>
 		 </div>
  			<div class="modal-footer">
    		<a href="#" class="btn" data-dismiss="modal">Close</a>
  		</div>
		</div>
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
