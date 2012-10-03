<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>eXceed Vote</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../bootstrap/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../bootstrap/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../bootstrap/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../bootstrap/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../bootstrap/ico/apple-touch-icon-57-precomposed.png">

  </head>

  <body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">eXceed Vote</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li><a href="#about" class="active">Vote</a></li>
              <li><a href="#contact">Project Details</a></li>
            </ul>
            <ul class="nav pull-right">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${account.getName() } ${account.getLastName() } <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Edit Profile</a></li>
                  <li><a href="#">Log out</a></li>
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      <div class="row">
        <div class="span3">
          <ul class="nav nav-list">
                <li class="nav-header">Main Page</li>
                <li class="active"><a href="#">Vote Project</a></li>
                <li><a href="#">Project Details</a></li>
                <li class="nav-header">Help Page</li>
                <li><a href="#">Add Project</a></li>
                <li><a href="#">Administrtor Page</a></li>
                <li class="divider"></li>
                <li><a href="#">Log out</a></li>
              </ul>
    </div>
    <div class="span9">
    	<form id="question1" method="post" action="VoteServlet">
	      <div class="hero-unit">
	        <div class="pull-right" style="margin-right: 20px; margin-top: 20px">
	            <button class="btn btn-large btn-primary" type="submit" id="question1-vote"><h2>Vote Project</h2></button>
	          </div>
	          <h1> Popular Vote </h1><br><br>
	          
	        <select name="question1-select" class="span3">
	          <option> Project#1 </option>
	          <option> Project#2 </option>
	          <option> Project#3 </option>
	          <option> Project#4 </option>
	          <option> Project#5 </option>
	          <option> Project#6 </option>
	          <option> Project#7 </option>
	          <option> Project#8 </option>
	          <option> Project#9 </option>
	          <option> Project#10 </option>
	        </select>
	        <br><br>
	        <div id="project1">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#1 Details</p></div>
	        </div>
	        <div id="project2" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#2 Details</p></div>
	        </div>
	        <div id="project3" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#3 Details</p></div>
	        </div>
	        <div id="project4" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#4 Details</p></div>
	        </div>
	        <div id="project5" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#5 Details</p></div>
	        </div>
	        <div id="project6" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#6 Details</p></div>
	        </div>
	        <div id="project6" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#6 Details</p></div>
	        </div>
	        <div id="project7" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#7 Details</p></div>
	        </div>
	        <div id="project8" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#8 Details</p></div>
	        </div>
	        <div id="project9" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#9 Details</p></div>
	        </div>
	        <div id="project10" style="display: none;">
	          <img src="http://mobi-wall.brothersoft.com/files/320240/p/1282293128223.jpg" class="img-polaroid">
	          <div class="pull-right" style="margin: 0px 30px; width: 300px"><p>Project#10 Details</p></div>
	        </div>
	      </div>
	  </form>
    </div>
  </div>

      <hr>

      <footer>
        <p>&copy; develop by CKP</p>
      </footer>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="js/vote.js"></script>
  </body>
</html>


