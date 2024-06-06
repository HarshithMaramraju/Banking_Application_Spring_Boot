<%-- <%@taglib uri="http://java.sun.com./jsp/jstl/core" prefix="c"%> --%>
<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%-- <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Widthdraw</title>
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	  <!-- withdraw-card -->
            <div class="card withdraw-card">
                <div class="card-body">
                    <form action="/transact/widthdraw" method="post" class="deposit-form">
                        <div class="form-group mb-2">
                            <label for="">Enter withdrawal Amount</label>
                            <input type="text" name="withdrawal_amount" class="form-control" placeholder="Enter withdraw Amount">
                        </div>
    
                        <div class="form-group">
                            <label for="">Select Account</label>
                            <select name="account_id" class="form-control" id="">
                                <option value="">--Select Account--</option>
                            </select>
                        </div>
                        <br>
                        <div class="form-group">
                        <button id="transact-btn" class="btn btn-md">withdraw</button>
                        </div>
                    </form>
                </div>
            </div>
</body>
</html>