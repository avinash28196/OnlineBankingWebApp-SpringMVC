<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create a Account</title>

 
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" 
  integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

 <%@ include file="header.jsp" %>  
<body>
<center>

<%-- <form class="pure-form pure-form-aligned"> --%>
<form:form action = "reg.obj" modelAttribute="bean" method="post">
<h1>Enter Account Holder Details</h1>
<table>

<tr><td><label font face="verdana">User Id:</label></td><td><form:input path = "userID"/></td><td style="color:red"><form:errors path = "userID"/></td></tr>

<tr><td><label font face="verdana">Name:</label></td><td><form:input path = "name"/></td><td style="color:red"><form:errors path = "name"/></td></tr>
<tr><td><label font face="verdana">Email:</label></td><td><form:input path = "email"/></td><td style="color:red"><form:errors path = "email"/></td></tr>
<tr><td><label font face="verdana">Phone Number:</label></td><td><form:input path = "mobileNo" placeholder="+(91)"/></td><td style="color:red" ><form:errors path = "mobileNo"/></td></tr>
<tr><td><label font face="verdana">Address:</label></td><td><form:input path = "address"/></td><td style="color:red"><form:errors path = "address"/></td></tr>
<tr><td><label font face="verdana">Pancard:</label></td><td><form:input path = "pancard"/></td><td style="color:red"><form:errors path = "pancard"/></td></tr>
<tr>
				<td><label font face="verdana">Security Question:</td>
				<td>
					<form:select path = "question">
					<option value = "null">--SELECT--</option>
					<option value = "Who is your favourite hero? ">Who is your favourite hero?</option>
					<option value = "What was your school name?">What was your school name?</option>
					<option value = "What was your birth place?">What was your birth place?</option>
				
					</form:select>
				</td>
			</tr>
<tr><td><label font face="verdana">Answer:</td><td><form:input path = "answer"/></td><td style="color:red"><form:errors path = "answer"/></td></tr>
 <tr><td><label font face="verdana">Balance:</td><td><form:input path = "accBal"/></td><td style="color:red"><form:errors path = "accBal"/></td></tr>
		<td><label font face="verdana">Account Type:</td>
				<td>
					<form:select path = "accType">
					<option value = "null">--SELECT--</option>
					<option value = "Savings Account">Savings Account </option>
					<option value = "Current Account">Current Account</option>
				
					</form:select>
				</td>
			</tr>	
			
<tr><td><label font face="verdana">Opening Date:</td><td><form:input path = "openDate" placeholder="DD-MMM-YYYY"/></td><td style="color:red" ><form:errors path = "openDate"/></td></tr>
			
<tr><td><label font face="verdana">Password:</td><td><form:input path = "password" type="password"/></td><td style="color:red"><form:errors path = "password"/></td></tr>
			
<tr>
				<td></td>
				
			<td><input class="pure-button pure-button-primary" type = "submit" value = "submit"/></td>
			</tr>			
</table>
</form:form>
<%-- </form> --%>
</body>
</center>

</html>