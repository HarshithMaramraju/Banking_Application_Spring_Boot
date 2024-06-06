<%-- <%@taglib uri="http://java.sun.com./jsp/jstl/core" prefix="c"%> --%>
<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%-- <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{
    box-sizing: border-box;
    font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
    "Lucida Sans", Arial, sans-serif;
}

body{
    background-color: rgb(211, 217, 226);
}

.container{
    margin: 10px auto;
}

.main-page-header{
    padding: 10px 0px ;
}

.main-page-header .company-name{
    font-weight: 600;
    color: white;
}

.navigation{
    /* border: 1px solid white; */
    margin-left: 25px;
}

.navigation li{
    display: inline-block;
    list-style-type: none;
    margin: 0px 15px;
}

.navigation li a{
    color: white;
    text-decoration: none;
}
</style>
<body>
	<%@include file="templetes/css/dashbord.css" %>
	
	 <header class="main-page-header mb-3 bg-primary">
        <div class="container d-flex aling-items-center">
            <div class="company-name">
                Easy-Banking Application
            </div>

            <nav class="navigation">
                <ul>
                    <li><a href="/app/dashbord">Dashbord</a></li>
                    <li><a href="/app/payment_history">Payment History</a></li>
                    <li><a href="/app/transaction_history">Transaction History</a></li>
                </ul>
            </nav>

            <div class="display-name ms-auto text-white">
                <i class="fa fa-circle text-success me-2"></i> Welcome
                <span>
                	${user.first_name}
                	${user.first_name}
                </span>
            </div>
            
            <a href="/logout" class="btn btn-sm text-white ms-3">
                <!-- <i class="fas fa-singout-alt me-2" aria-hidden="true"></i> -->
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0z"/>
                    <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z"/>
                  </svg>
                  Signout
            </a>
            <!-- <button class=""></button> -->
        </div>
    </header>
	
</body>
</html>