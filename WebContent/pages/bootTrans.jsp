<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Online Banking Application</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<%@ include file="header.jsp" %> 
		<div class="Transaction"  >
                    
               
                      
					<div class="btn-group btn-group-justified">
						<div class="btn-group btn-group-lg">
						<a href="daily.obj" type="button" class="btn btn-primary btn-lg btn-block term active-term selected-term">Daily</a>
							
						</div>
                        <div class="btn-group btn-group-lg">
							<a href="monthly.obj" type="button" class="btn btn-primary btn-lg btn-block term active-term selected-term">Monthly</a>
						</div>
                        <div class="btn-group btn-group-lg">
                          <a href="quarterly.obj" type="button" class="btn btn-primary btn-lg btn-block term active-term selected-term">Quarterly</a>
                        </div>
						<div class="btn-group btn-group-lg">
                          <a href="yearly.obj" type="button" class="btn btn-primary btn-lg btn-block term active-term selected-term">Yearly</a>
                        </div>
                      </div>
                  </div> 	


	<center>
<!-- <h2>View Transactions:</h2><br/><hr>
<a href="daily.obj">Daily</a>&nbsp;&nbsp;
<a href="monthly.obj">Monthly</a>&nbsp;&nbsp;
<a href="quarterly.obj">Quarterly</a>&nbsp;&nbsp;
<a href="yearly.obj">Yearly</a>&nbsp;&nbsp;
<hr> -->
<%--  ${DailyTransactionsList}
 --%> 
 	<center>
 	<br> 
   <h1>View Transaction History <span class="glyphicon glyphicon-search"></span></h1>
   </center>
 	<br>
 
 	<hr>
<c:if test="${DailyTransactionsList!=null }">
 <table class="table table-hover">
 	<thead>
			<tr><th>Transaction Id</th><th>Account Number</th><th>Transaction Description</th><th>Date Of Transfer</th><th>Amount</th></tr>
	</thead>
	  <tbody>
			<c:forEach var="item" items="${DailyTransactionsList}">
				<tr>
					<td>${item.accountNumber}</td>
					<td>${item.transactionId}</td>
					<td>${item.transactionDescription}</td>
				    <td>${item.getDateOfTransaction()}</td> 
					<td>${item.transactionamount}</td>
				</tr> 
			</c:forEach>
		  </tbody>
		</table>
</c:if>

<c:if test="${MonthlyTransactionsList!=null }">
 <table cellspacing=5 class="table table-hover">
 			<thead>
			<tr><th>Transaction Id</th><th>Account Number</th><th>Transaction Description</th><th>Date Of Transfer</th><th>Amount</th></tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${MonthlyTransactionsList}">
				<tr>
					<td>${item.transactionId}</td>
					<td>${item.accountNumber}</td>
					<td>${item.transactionDescription}</td>
				    <td>${item.getDateOfTransaction()}</td> 
					<td>${item.transactionamount}</td>
				</tr> 
			</c:forEach>
			</tbody>
		</table>
</c:if>
<c:if test="${QuarterlyTransactionsList!=null }">
 <table cellspacing=5 class="table table-hover">
 			<thead>
			<tr><th>Transaction Id</th><th>Account Number</th><th>Transaction Description</th><th>Date Of Transfer</th><th>Amount</th></tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${QuarterlyTransactionsList}">
				<tr>
					<td>${item.transactionId}</td>
					<td>${item.accountNumber}</td>
					<td>${item.transactionDescription}</td>
				    <td>${item.getDateOfTransaction()}</td> 
					<td>${item.transactionamount}</td>
				</tr> 
			</c:forEach>
			</tbody>
		</table>
</c:if>
<c:if test="${YearlyTransactionsList!=null }">
 <table cellspacing=5 class="table table-hover">
 			<thead>
			<tr><th>Transaction Id</th><th>Account number</th><th>Transaction Description</th><th>Date Of Transfer</th><th>Amount</th></tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${YearlyTransactionsList}">
				<tr>
					<td>${item.transactionId}</td>
					<td>${item.accountNumber}</td>
					<td>${item.transactionDescription}</td>
				    <td>${item.getDateOfTransaction()}</td> 
					<td>${item.transactionamount}</td>
				</tr> 
			</c:forEach>
			</tbody>
		</table>
</c:if>
</center>

  <div class="navbar navbar-default navbar-fixed-bottom" >
    <div class="container">
      <p class="navbar-text pull-left">© 2014 - Site Built By Bindu And 6 Others
           <a href="http://tinyurl.com/tbvalid" target="_blank" >HTML 5 Validation</a>
           <br></b> ICICI Bank, stands for Industrial Credit and Investment Corporation of India,<br>
       is an Indian multinational banking and financial services company headquartered in Mumbai,<br>
        Maharashtra, India, with its registered office in Vadodara.<br>
      </p><br>
      <p>
    
       
      </p>
      
      
      <a href="https://bitcoin.org/en/" class="navbar-btn  btn btn-primary pull-right">
      <span class="	glyphicon glyphicon-bitcoin"></span>  Click here to know about Bitcoin</a>
	 
    </div>

</body>
<%@ include file="footer.jsp" %> 
</html>
