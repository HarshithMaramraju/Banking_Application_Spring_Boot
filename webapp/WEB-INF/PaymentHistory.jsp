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

	<div class="container">
		<c:if test="${request.payment_history!=null}">
		<table class="table text-center table-striped">
          <tr>
            <th>Record Number</th>
            <th>Beneficiary</th>
            <th>Beneficiary Account Number</th>
            <th>Amount</th>
            <th>Status</th>
            <th>Reference</th>
            <th>Reason Code</th>
            <th>Created At</th>
         </tr>
         <c:forEach item="${requestScope.payment_history}" var="payments">
         <tr>
           <td>${payments.payment_id}</td>
           <td>${payments.beneficiary}</td>
           <td>${payments.beneficiary_acc_no}</td>
           <td>${payments.amount}</td>
           <td>${payments.status}</td>
           <td>${payments.reference_no}</td>
           <td>${payments.reason_coad}</td>
           <td>${payments.created_at}</td>
        </tr>
         
         </c:forEach>
      </table>

	</c:if>
	</div>
	
	<c: import url="components/inc/footer.jsp"/>
	<%@include file="components/inc/footer.jsp" %>
</body>
</html>