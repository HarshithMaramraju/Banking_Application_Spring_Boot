<%-- <%@taglib uri="http://java.sun.com./jsp/jstl/core" prefix="c"%> --%>
<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%-- <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="offcanvas offcanvas-start" tabindex="-1"
		id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasExampleLabel">Offcanvas</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>

		<div class="offcanvas-body">
			<small class="card-text mb-1"> Choose an option from below!
				To perform transaction. </small> <select name="transact-type"
				class="form-control " id="transact-type">
				<option value="none">--select Transaction Type--</option>
				<option value="payment">Payment</option>
				<option value="transfer">Transfer</option>
				<option value="deposit">Deposite</option>
				<option value="withdraw">Withdraw</option>
			</select> <br>

			<!--payment form  -->
			<c:import url="components/transcat_forms/payment_form.jsp" />
			<%@include file="components/transact_form/payment_form.jsp"%>
			
			<!-- transfer form -->
			<c:import url="components/transcat_forms/transfer_form.jsp" />
			<%@include file="components/transact_form/transfer_form.jsp"%>
			
			<!-- deposite form -->
			<c:import url="components/transcat_forms/deposit_form.jsp" />
			<%@include file="components/transact_form/deposit_form.jsp"%>
			
			<!-- withdraw form -->
			<c:import url="components/transcat_forms/withdraw_form.jsp" />
			<%@include file="components/transact_form/withdraw_form.jsp"%>
			




		</div>
	</div>
</body>
</html>