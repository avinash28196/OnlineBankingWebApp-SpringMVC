<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="pages/css.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>  
<form action="checkLogin.obj">

	
	
	<h1 align="center">Admin Login</h1>
		<hr width="66%">
		<table align="center" cellpadding="5" border="10" cellsapcing="0">
		<tr> 
			<td>Admin Id:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="text" required placeholder="Enter Admin Id" name="adminId">
			</td>
			
		<tr>
			<td>Password:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="password" required placeholder="Enter Password" name="password">
			</td>
		</tr>
	
		<tr>
		<td align="center">
		<input class="btn"  type="submit" value="Log In!!" >
		</td>
		</tr>
		<h4 align="center"><font color="red">${error}</font></h4>
		
	</table>
</form>
</body>
</html>
<%@ include file="footer.jsp" %>  