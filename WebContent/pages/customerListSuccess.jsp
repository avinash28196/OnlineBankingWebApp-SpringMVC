<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="myCss.css" rel="stylesheet">
</head>
<body>
<h1>Customer  list Information.</h1>

<table border='2px'>
<tr><th>custID</th><th>Name</th><th>Mobile</th><th>Email</th><th>DOB</th></tr>
<c:forEach items = "${list}" var = "list">

	<tr>
	<td>Value<c:out value="${list.userId}"> already exists!!!!!!!</c:out></td>
	
	</tr>
	</c:forEach> 
	
</table>

</body>
</html>