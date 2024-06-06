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
<title>Dashbord</title>
</head>

<style>
* {
	box-sizing: border-box;
	font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
		"Lucida Sans", Arial, sans-serif;
}

body {
	background-color: rgb(211, 217, 226);
}

.container {
	margin: 10px auto;
}

.main-page-header {
	padding: 10px 0px;
}

.main-page-header .company-name {
	font-weight: 600;
	color: white;
}

.navigation {
	/* border: 1px solid white; */
	margin-left: 25px;
}

.navigation li {
	display: inline-block;
	list-style-type: none;
	margin: 0px 15px;
}

.navigation li a {
	color: white;
	text-decoration: none;
}

.display-name {
	font-weight: 600px;
}

#transact-btn {
	background-color: #FFB114;
	/* box-shadow: 0px 3px 3px rgb(0,14,53); */
	color: white;
	border: 1px solid #7d5401;
}

#add-acount-btn {
	background-color: #FF4E00;
	border: 1px solid #8B2B00;
	color: white;
	/* box-shadow: 0px 3px 3px rgb(0,14,53); */
}

.offcanvas {
	background-image:
		url(https://c0.wallpaperflare.com/preview/140/101/291/money-transfer-mobile-banking.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	/* background-po sition:center; */
	color: white;
}

.payment-card {
	display: none;
}

.transfer-card {
	display: none;
}

.deposit-card {
	display: none;
}

.withdraw-card {
	display: none;
}
</style>

<body>

	 <c:import url="components/incl/header.jsp" />
	<%@include file="components/incl/header.jsp"%>

	<!-- transact offcamves pulls form left -->
	<c:import url="components/incl/transact_offcanves.jsp" />
	<%@include file="components/incl/transact_offcanves.jsp"%>

	<!-- add accounts offcamves pulls form right -->
	<c:import url="components/incl/footer.jsp" />
	<%@include file="components/incl/add_accounts_offcanves.jsp"%>
	
	<div class="container">
		<c:if test="${success!=null}">
		<div class="alert alert-info text-center border border-info">
			<b>${success}</b>
		</div>
	</c:if>
	
	<c:if test=${error!=null}>
		<div class="alert alert-danger text-center border border-danger">
			<b>${error}</b>
		</div>
	</c:if>
	</div>
		
	<c:choose>
	<!-- display accounts -->
		<c:when test="${fn:length(userAccount)>0}">
			<c:import url="components/account_display.jsp" />
			<%@include file="components/account_disply.jsp"%>
		</c:when>

		<c:otherwise>
	<!-- dont display account -->
			<c:import url="components/account_display.jsp" />
			<%@include file="components/account_disply.jsp"%>
		</c:otherwise>

	</c:choose>




	<c:import url="components/incl/footer.jsp" />
	<%@include file="components/incl/footer.jsp"%>
</body>
<!-- <script src="./Js/Dashbord.js"></script> -->
<script type="text/javascript">
//get transaction type
const transactType  = document.getElementById("transact-type");
// get transaction forms
const paymentCard = document.querySelector(".payment-card");
const transferCard = document.querySelector(".transfer-card");
const depositeCard = document.querySelector(".deposit-card");
const withdrawCard = document.querySelector(".withdraw-card");

transactType.addEventListener("change",()=>{
    switch (transactType.value) {
        case "payment":
            paymentCard.style.display="block";
            paymentCard.nextElementSibling.style.display = "none";
            depositeCard.style.display = "none";
            withdrawCard.style.display = "none";
            break;
    
        case "transfer":
            transferCard.previousElementSibling.style.display = "none";
            transferCard.style.display = "block";
            transferCard.nextElementSibling.style.display = "none";
            withdrawCard.style.display = "none";
            break;
        
        case "deposit":
            paymentCard.style.display = "none";
            depositeCard.previousElementSibling.style.display = "none";
            depositeCard.style.display = "block";
            depositeCard.nextElementSibling.style.display = "none";
            break;
        
        case "withdraw":
            withdrawCard.previousElementSibling.style.display = "none";
            withdrawCard.style.display = "block";
            transferCard.style.display = "none";
            paymentCard.style.display = "none";
          	break;
         
        case "none":
            paymentCard.style.display="none";
            transferCard.style.display = "none";
            depositeCard.style.display = "none";
            withdrawCard.style.display = "none";
    } 
})
</script>
</html>