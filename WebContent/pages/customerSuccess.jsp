<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css"
   integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp" %>  
<body>
<center>
<table class="pure-table pure-table-bordered">

<thead>
<tr><td colspan = "2"><h1>Customer Information.</h1></td></tr>
</thead>
</tbody>
<tr><td>User Id:</td><td>${k.userID}</td></tr>

<tr><td>Account Id:</td><td>${k.accID}</td></tr>

<tr><td>Name:</td><td>${k.name}</td></tr>

<tr><td>Email:</td><td>${k.email}</td></tr>

<tr><td>Address:</td><td>${k.address}</td></tr>

<tr><td>Pancard:</td><td>${k.pancard}</td></tr>
<%-- <tr><td>Security Question:</td><td>${k.question}</td></tr> --%>
<%-- <tr><td>Answer:</td><td>${k.answer}</td></tr> --%>
<tr><td>Balance:</td><td>${k.accBal}</td></tr>
<tr><td>Account Type:</td><td>${k.accType}</td></tr>
<tr><td>Opening Date:</td><td>${k.openDate}</td></tr>
<%-- <tr><td>Password:</td><td>${k.password}</td></tr> --%>
</tbody>


</table>
</center>

</body>
<%@ include file="footer.jsp" %>  
</html>