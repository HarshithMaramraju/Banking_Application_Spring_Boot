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
<title>Tranfer</title>
</head>
<body>

	 <!-- transfer-card -->
            <div class="card transfer-card">
                <div class="card-body">
                    <form action="/transact/transfer" method="post">
                    
                    	<!-- select account option -->
					<div class="form-group">
					<label for="">Select Account</label>
					 <select name="transfer_form" class="form-control" id="">
						<c:if test=${userAccount!=null}>
							<c:foreach items="${userAccount}" var="${selectAccount}">
							<option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
							
							</c:foreach>
						</c:if>
						<option value="">--Select Account--</option>
					</select>
				</div>					
					
                    <div class="form-group mb-2">
                        <label for="">Enter Transfer Amount</label>
                        <input class="form-control"  type="text" name="transfer_amount" placeholder="Enter transfer Amount">
                    </div>
                    <br>
                    <div class="form-group mb-2">
                    <button id="transact-btn" class="btn btn-md">Transfer</button>
                    </div>
                    </form>

                </div>
            </div>

</body>
</html>