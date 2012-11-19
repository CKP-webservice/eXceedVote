<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
	<title>eXceed Vote</title>
	<!-- Style -->
    <link href="css/loginstyle.css" rel="stylesheet">
    <link href="css/alert_bootstrap.css" rel="stylesheet">
</head>
<body>
	<div class="container">
    	<section class="login">
    		<h1>eXceed Vote</h1>
    		${message}
    		<form method="post" action="login-servlet">
    		<p><input type="text" name="uname" value="" placeholder="Username or Email"></p>
    		<p><input type="password" name="password" value="" placeholder="Password"></p>
    		<p class="remember_me">
    		<label>
            <input type="checkbox" name="remember_me" id="remember_me"> Remember me on this computer </label>
            </p>
            <p class="submit"><input type="submit" name="commit" value="Login"></p>
            </form>
        </section>
  </div>
</body>
</html>
