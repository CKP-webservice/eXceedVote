
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"
	import="com.digitalgradient.portal.login.UserData"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>DashBoard</title>
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
		<div class="hero-unit">
			<center>
				<%
					UserData currentUser = (UserData) (session
							.getAttribute("currentSessionUser"));
				%>

				<h3>
					Welcome
					<%=currentUser.getRealName()%>
				</h3>
				<table class="table">
					<thead>
						<tr>
							<td>Account Details</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Username</td>
							<td><%=currentUser.getUserName()%></td>
						</tr>
						<tr>
							<td>Current Score</td>
							<td><%=currentUser.getScore()%></td>
						</tr>
					</tbody>
				</table>
				<form class="form-horizontal" action="VoteServlet">
					<table class="table table-bordered" border="0" style="width: 300px;">
						<thead>
							<img src="bootstrap/img/companyLogo.jpg" />
							<td><strong>Vote</strong></td>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="control-group">
										<div class="controls">
											<button type="submit" class="btn btn-primary">Sign
												in</button>
										</div>
									</div>
								</td>
							</tr>
					</table>
				</form>
			</center>
		</div>
	</div>
</body>

</html>

