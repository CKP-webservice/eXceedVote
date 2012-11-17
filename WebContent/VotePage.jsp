<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<%
	String s = (String)session.getAttribute("islogin");
	System.out.println(s);
	if(s == null || s == "" || s == "no")
	{
		session.setAttribute("message", "Please Login");
		
%>
	<jsp:forward page="LoginPage.jsp">
      <jsp:param name="message" value="Please Login"/>
    </jsp:forward>
<%
	}
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
	
	<!-- Add jQuery library -->
	<script type="text/javascript" src="fancybox/lib/jquery-1.8.2.min.js"></script>
	
	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="fancybox/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="fancybox/source/jquery.fancybox.js?v=2.0.6"></script>
	<link rel="stylesheet" type="text/css" href="fancybox/source/jquery.fancybox.css?v=2.0.6" media="screen" />

	<!-- Add Button helper -->
	<link rel="stylesheet" type="text/css" href="fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.2" />
	<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.2"></script>

	<!-- Add Thumbnail helper -->
	<link rel="stylesheet" type="text/css" href="fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.2" />
	<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script>

	<!-- Add Media helper -->
	<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.0"></script>
	<script type="text/javascript" src="js/web.js"></script>
	<script type="text/javascript" src="js/date_time.js"></script>
	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
	</style>
	<script src="bootstrap/js/bootstrap.js"></script>
    <script src="js/vote.js"></script>
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
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
                <li><a href="#">Administrator Page</a></li>
                <li class="divider"></li>
                <li><a href="#">Log out</a></li>
              </ul>
    </div>
    <div class="span9">
    	<div class="hero-unit">
    	<h3 	class="pull-right" id="date_time"></h3>
    	<script type="text/javascript"> window.onload = date_time('date_time'); </script>
    	</div>
    	<form id="question1" method="post" action="VoteServlet">
	      <div class="hero-unit">
	        <div class="pull-right" style="margin-right: 20px; margin-top: 20px">
	            <button class="btn btn-large btn-primary" name="vote1" type="submit" id="question1-vote"><h2>Vote Project</h2></button>
	          </div>
	          <h1> Popular Vote </h1><br><br>
	        <select name="question1-select" id="question1-select" class="span3">
	          <option value="1"> Project#1 </option>
	          <option value="2"> Project#2 </option>
	          <option value="3"> Project#3 </option>
	          <option value="4"> Project#4 </option>
	          <option value="5"> Project#5 </option>
	          <option value="6"> Project#6 </option>
	          <option value="7"> Project#7 </option>
	          <option value="8"> Project#8 </option>
	          <option value="9"> Project#9 </option>
	          <option value="10"> Project#10 </option>
	        </select>
	        <br><br>
	        <div id="project1">
	        	<h2 style="margin: 10px">Project#1</h2>
	        	<br>
				<a class="fancybox" href="http://farm5.static.flickr.com/4058/4252054277_f0fa91e026.jpg" data-fancybox-group="gallery"><img src="http://farm5.static.flickr.com/4058/4252054277_f0fa91e026_m.jpg" alt="" width="220px" height="140px" style="border-radius: 7px; margin: 10px" /></a>
				<a class="fancybox" href="http://farm3.static.flickr.com/2489/4234944202_0fe7930011.jpg" data-fancybox-group="gallery"><img src="http://farm3.static.flickr.com/2489/4234944202_0fe7930011_m.jpg" alt="" width="220px" height="140px" style="border-radius: 7px; margin: 10px" /></a>
				<a class="fancybox" href="http://farm3.static.flickr.com/2647/3867677191_04d8d52b1a.jpg" data-fancybox-group="gallery"><img src="http://farm3.static.flickr.com/2647/3867677191_04d8d52b1a_m.jpg" alt="" width="220px" height="140px" style="border-radius: 7px; margin: 10px" /></a>
	        	<br><br>
	        	<div style="margin: 0px 10px; width: 720px"><p>	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate </p></div>
	        </div>
	        <div id="project2" style="display: none;">
	        	<h2 style="margin: 10px">Project#2</h2>
	        	<br>
	        	<a class="fancybox" href="http://exceed.cpe.ku.ac.th/wiki/images/e/ec/Interface_with_pdf.png" data-fancybox-group="gallery"><img src="http://exceed.cpe.ku.ac.th/wiki/images/e/ec/Interface_with_pdf.png" alt="" width="220px" height="140px" style="border-radius: 7px; margin: 10px" /></a>
				<a class="fancybox" href="http://farm3.static.flickr.com/2489/4234944202_0fe7930011.jpg" data-fancybox-group="gallery"><img src="http://farm3.static.flickr.com/2489/4234944202_0fe7930011_m.jpg" alt="" width="220px" height="140px" style="border-radius: 7px; margin: 10px" /></a>
				<a class="fancybox" href="http://farm3.static.flickr.com/2647/3867677191_04d8d52b1a.jpg" data-fancybox-group="gallery"><img src="http://farm3.static.flickr.com/2647/3867677191_04d8d52b1a_m.jpg" alt="" width="220px" height="140px" style="border-radius: 7px; margin: 10px" /></a>
	        	<br><br>
	        	<div style="margin-top: 0px; margin-bottom: 0px; margin-left: 20px; margin-right: 20px; width: 720px"><p>A part of everyone life is “Reading”, When you read you’ll more understand if you take some note. But how bad of taking notes in your normal life. For example when you circle a word, hi-light some text or paste some sticky notes. You can see that it’s hard to edit without dirtiness or save it permanently. That’s very DIRTY!!!. Moreover, unsharable is also a big problem. These problem drive us create "World Note" , a new form application to become a perfect software to note to write to share.</p></div>
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
  </body>
</html>


