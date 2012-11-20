<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<%
	String s = (String)session.getAttribute("isLogin");
	if(s == null || s == "" || s == "no")
	{
%>
	<jsp:forward page="LoginPage.jsp"></jsp:forward>
<%
	}
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
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
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
                  <li><a href="#">Administrator Page</a></li>
                  <li><a href="#">Log out</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav">
              <li><a href="VotePage.jsp">Home</a></li>
              <li><a href="ProjectDetails.jsp">Project Details</a></li>
              <li class="active"><a href="AddProjectPage.jsp">Add/Edit Project</a></li>
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
        	 <form class="form-horizontal" method="post" action="addproject-servlet">
	        	 <fieldset>
	        	 <div id="legend"class="">
		        	 <legend class="" id="t1">Project Detail</legend>
		         </div>
		         <div class="control-group">
		         <!-- Text input-->
		         	<label class="control-label" for="input01">Project Name</label>
		         	<div class="controls">
		         		<input name="name" type="text" placeholder="" class="input-xxlarge">
		         	</div>
		         </div>
		<div class="control-group">
          <!-- Textarea -->
          <label class="control-label">Description</label>
          <div class="controls">
            <div class="textarea">
                  <textarea name="description" rows="8" style="width: 530px"> </textarea>
            </div>
          </div>
        </div>
        <div class="control-group">
          <!-- Textarea -->
          <label class="control-label">Short Description</label>
          <div class="controls">
            <div class="textarea">
                  <textarea name="short_description" rows="5" style="width: 530px"> </textarea>
            </div>
          </div>
        </div>
        <div id="legend" class="">
		  	<legend class="" id="t2">Screenshot</legend>
		</div>
		<div class="control-group">
          <label class="control-label">Screenshot #1</label>
          <!-- File Upload -->
          <div class="controls">
            <input name="imageurl1" class="input-file" id="fileInput1" type="file">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label">Screenshot #2</label>
          <!-- File Upload -->
          <div class="controls">
            <input name="imageurl2" class="input-file" id="fileInput2" type="file">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label">Screenshot #3</label>
          <!-- File Upload -->
          <div class="controls">
            <input name="imageurl3" class="input-file" id="fileInput3" type="file">
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
