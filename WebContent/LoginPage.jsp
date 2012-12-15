<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>eXceed Vote</title>
	<link rel="stylesheet" type="text/css" href="css/loginstyle2.css" />
</head>
<body>
	<div class="container">
		<section id="content">
			<form method="post" action="login-servlet">
				<h1>eXceed Vote</h1>
				${message}
				<div>
					<input style="margin-top: 15px;" name="uname" type="text" placeholder="Username" id="username" />
				</div>
				<div>
					<input name="password" type="password" placeholder="Password" id="password" />
				</div>
				<div>
					<input type="submit" value="Log in" />
				</div>
			</form><!-- form -->
		</section><!-- content -->
	</div><!-- container -->
</body>
</html>