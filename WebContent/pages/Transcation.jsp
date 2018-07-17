<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transaction Page</title>


</head>
<body>
<center>
<h2>View Transactions:</h2><br/><hr>
<a href="daily.obj">Daily</a>&nbsp;&nbsp;
<a href="monthly.obj">Monthly</a>&nbsp;&nbsp;
<a href="quarterly.obj">Quarterly</a>&nbsp;&nbsp;
<a href="yearly.obj">Yearly</a>&nbsp;&nbsp;
<hr>
<%--  ${DailyTransactionsList}
 --%> 
<c:if test="${DailyTransactionsList!=null }">
 <table cellspacing=10>
			<tr><th>Transaction Id</th><th>Account Number</th><th>Transaction Description</th><th>Date Of Transfer</th><th>Amount</th></tr>
			<c:forEach var="item" items="${DailyTransactionsList}">
				<tr>
					<td>${item.accountNumber}</td>
					<td>${item.transactionId}</td>
					<td>${item.transactionDescription}</td>
				    <td>${item.getDateOfTransaction()}</td> 
					<td>${item.transactionamount}</td>
				</tr> 
			</c:forEach>
		</table>
</c:if>

<c:if test="${MonthlyTransactionsList!=null }">
 <table cellspacing=5>
			<tr><th>Transaction Id</th><th>Account Number</th><th>Transaction Description</th><th>Date Of Transfer</th><th>Amount</th></tr>
			<c:forEach var="item" items="${MonthlyTransactionsList}">
				<tr>
					<td>${item.transactionId}</td>
					<td>${item.accountNumber}</td>
					<td>${item.transactionDescription}</td>
				    <td>${item.getDateOfTransaction()}</td> 
					<td>${item.transactionamount}</td>
				</tr> 
			</c:forEach>
		</table>
</c:if>
<c:if test="${QuarterlyTransactionsList!=null }">
 <table cellspacing=5>
			<tr><th>Transaction Id</th><th>Account Number</th><th>Transaction Description</th><th>Date Of Transfer</th><th>Amount</th></tr>
			<c:forEach var="item" items="${QuarterlyTransactionsList}">
				<tr>
					<td>${item.transactionId}</td>
					<td>${item.accountNumber}</td>
					<td>${item.transactionDescription}</td>
				    <td>${item.getDateOfTransaction()}</td> 
					<td>${item.transactionamount}</td>
				</tr> 
			</c:forEach>
		</table>
</c:if>
<c:if test="${YearlyTransactionsList!=null }">
 <table cellspacing=5>
			<tr><th>Transaction Id</th><th>Account number</th><th>Transaction Description</th><th>Date Of Transfer</th><th>Amount</th></tr>
			<c:forEach var="item" items="${YearlyTransactionsList}">
				<tr>
					<td>${item.transactionId}</td>
					<td>${item.accountNumber}</td>
					<td>${item.transactionDescription}</td>
				    <td>${item.getDateOfTransaction()}</td> 
					<td>${item.transactionamount}</td>
				</tr> 
			</c:forEach>
		</table>
</c:if>
</center>
</body>
</html>