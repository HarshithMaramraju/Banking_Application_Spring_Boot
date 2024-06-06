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
      crossorigin="anonymous"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>Paymetn</title>
</head>
<body>
	 <!-- payment card -->
            <div class="card payment-card">
                <div class="card-body">
                    <!-- Payment form -->
					<form action="/transact/payment" method="post">
						<div class="form-group mb-2">
                        <label for="">Account Holder</label>
                        <input class="form-control" type="text" name="beneficiary" placeholder="Enter Account Holder Name / Beneficiary name">
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Account Number/Beneficiary Number</label>
                        <input class="form-control"  type="text" name="account_number" placeholder="Enter Account Holder No / Beneficiary Account No">
                    </div>

                    <!-- select account option -->
                    

                    <div class="form-group mb-2">
                        <label for="">Reference</label>
                        <input class="form-control" type="text" name="reference" placeholder="Enter Reference">
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Enter Amount</label>
                        <input class="form-control"  type="text" name="payment_amount" placeholder="Enter Amount">
                    </div>
                    <br>
                    <div class="form-group mb-2">
                       <button id="transact-btn" class="btn btn-md">Pay</button>
                    </div>
					</form>
                </div>
            </div>
</body>
</html>