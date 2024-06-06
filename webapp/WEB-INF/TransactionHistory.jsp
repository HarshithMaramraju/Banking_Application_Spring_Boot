<%@taglib uri="http://java.sun.com./jsp/jstl/core" prefix="c"%>
<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<link rel="stylesheet" href="./css/dashbord.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<title>Payment History</title>
</head>
<body>
	<c: import url="components/inc/header.jsp"/>
	<%@include file="components/inc/header.jsp" %>
	
	<div class="card">
		<div class="card-body">
			<c:if test="${request.transaction_history!=null}">
		<table class="table text-center table-striped">
          <tr>
            <th>Transaction Id</th>
            <th>Account Name</th>
            <th>Transaction Type</th>
            <th>Amount</th>
            <th>Source</th>
            <th>Status</th>
            <th>Reason Code</th>
            <th>Created At</th>
         </tr>
         <c:forEach item="${requestScope.trasact_history}" var="transactionHistory">
         <tr>
           <td>${payments.transaction_id}</td>
           <td>${payments.account_name}</td>
           <td>${payments.transaction_type}</td>
           <td>${payments.amount}</td>
           <td>${payments.source}</td>
           <td>${payments.status}</td>
           <td>${payments.reason_code}</td>
           <td>${payments.created_at}</td>
        </tr>
         
         </c:forEach>
      </table>

	</c:if>
		</div>
	</div>
	
	<c: import url="components/inc/footer.jsp"/>
	<%@include file="components/inc/footer.jsp" %>

</body>
</html>