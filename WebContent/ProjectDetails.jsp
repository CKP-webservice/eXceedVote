<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
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
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <strong>${user.getName()} ${user.getLastName() }</strong></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Administrator Page</a></li>
                  <li><a href="#">Log out</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav">
              <li><a href="VotePage.jsp">Home</a></li>
              <li class="active"><a href="ProjectDetails.jsp">Project Details</a></li>
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
              <li><a href="#t1">Project#1</a></li>
              <li><a href="#t2">Project#2</a></li>
              <li><a href="#t3">Project#3</a></li>
              <li><a href="#t4">Project#4</a></li>
            </ul>
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit" id="t1">
            <div class="row-fluid"><h1>Project #1</h1></div>
            <h2>Team #1</h2>
            <div id="project1">
	        	<br>
				<a class="fancybox" href="http://farm5.static.flickr.com/4058/4252054277_f0fa91e026.jpg" data-fancybox-group="gallery"><img src="http://farm5.static.flickr.com/4058/4252054277_f0fa91e026_m.jpg" alt="" width="240px" height="160px" style="border-radius: 7px; margin: 10px" /></a>
				<a class="fancybox" href="http://farm3.static.flickr.com/2489/4234944202_0fe7930011.jpg" data-fancybox-group="gallery"><img src="http://farm3.static.flickr.com/2489/4234944202_0fe7930011_m.jpg" alt="" width="240px" height="160px" style="border-radius: 7px; margin: 10px" /></a>
				<a class="fancybox" href="http://farm3.static.flickr.com/2647/3867677191_04d8d52b1a.jpg" data-fancybox-group="gallery"><img src="http://farm3.static.flickr.com/2647/3867677191_04d8d52b1a_m.jpg" alt="" width="240px" height="160px" style="border-radius: 7px; margin: 10px" /></a>
	        	<br><br>
	        	<p>	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate 		</p>
	        </div>
	      </div>
          <div class="row-fluid" id="t2">
          	<div class="hero-unit">
            <h1>Project #2</h1>
            
            </div>
          </div>
          <div class="row-fluid">
          	<div class="hero-unit" id="t3">
            <h1>Project #3</h1>
            
            </div>
          </div><!--/row-->
          <div class="row-fluid">
          	<div class="hero-unit" id="t4">
            <h1>Project #4</h1>
            
          </div>
          </div><!--/row-->
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
