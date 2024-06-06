<%-- <%@taglib uri="http://java.sun.com./jsp/jstl/core" prefix="c"%> --%>
<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%-- <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/register.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<title>Register</title>
</head>

<style>
* {
	box-sizing: border-box;
}

body {
	background-image: url(https://wallpapercave.com/wp/wp6602995.jpg);
	background-size: cover;
	/* background-position: center center; */
	background-repeat: no-repeat;
}

.card {
	/* justify-content: center; */
	align-items: center;
	font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
		"Lucida Sans", Arial, sans-serif;
	margin-top: 150px;
}

.card-body h1 {
	color: white;
}

.card .form-control {
	margin: 10px 0px;
	box-shadow: 0px 3px 6px rgb(0, 14, 53);
}

.card .card-title {
	color: white;
}

.card button {
	background-color: #ff4e00;
	border: 1px solid #8b2b00;
	color: white;
	width: 200px;
	margin: 10px 0px;
}

.card button:hover {
	background-color: #ff4e00;
	border: 1px solid #8b2b00;
	color: black;
	box-shadow: 0px 3px 6px rgb(0, 14, 53);
}
</style>

<body class="d-flex align-items-center justify-content-center">
	<div class="card registration-form-card col-6 bg-transparent border-0">
		<div class="card-body">
			<h1 class="form-header card-title mb-3">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
                        <path
						d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001m-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708z" />
                        </svg>
				Register
			</h1>

			<!--Display message -->
			<%-- <c:if test=${requestScope.passwordMisMatch !=null}>
				<div class="alert alert-danger text-center border border-danger">
					<b>${requestScope.passwordMisMatch !=null}</b>
				</div>
			</c:if>
			
			<c:if test=${requestScope.success !=null}>
				<div class="alert alert-success text-center border border-success">
					<b>${requestScope.success !=null}</b>
				</div>
			</c:if> --%>

			<form:form action="/registerInsert" class="reg-form" method="post"
				modelAttribute="registerUser">

				<div class="row">
					<div class="form-group col">
						<input type="text" path="first_name"
							class="form-control form-control-lg"
							placeholder="enter first name" required />
						<!-- <form:errors path="first_name" class="text-white bg-danger" /> -->
					</div>

					<div class="form-group col">
						<input type="text" path="last_name"
							class="form-control form-control-lg"
							placeholder="enter last name" required />
						<!-- <form:errors path="last_name" class="text-white bg-danger" /> -->

					</div>
				</div>

				<div class="form-group ">
					<input type="email" path="email"
						class="form-control form-control-lg" placeholder="enter email"
						required />
					<!-- <form:errors path="email" class="text-white bg-danger" /> -->

				</div>

				<div class="row">
					<div class="form-group col">
						<input type="password" path="password"
							class="form-control form-control-lg" placeholder="enter password"
							required />
						<!-- <form:errors path="password" class="text-white bg-danger" /> -->
					</div>

					<div class="form-group col">
						<small class="text-white bg-danger">${conform_password}</small> <input
							type="password" path="conform_password"
							class="form-control form-control-lg"
							placeholder="re-enter password" required />
					</div>
				</div>

				<div class="form-group col">
					<button class="btn btn-lg">Register</button>
				</div>
			</form:form>

			<p class="card-text text-white my-2">
				Already have an account? <span class="ms-2 text-warning"><a
					href="/log" class="text-warning">Sign In</a></span>
			</p>

			<small class="text-warning"> <!-- <i class="fa fa-arrow-alt-circle-left me-2"></i> -->
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-arrow-bar-left"
					viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
						d="M12.5 15a.5.5 0 0 1-.5-.5v-13a.5.5 0 0 1 1 0v13a.5.5 0 0 1-.5.5M10 8a.5.5 0 0 1-.5.5H3.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L3.707 7.5H9.5a.5.5 0 0 1 .5.5" />
                      </svg> <a href="/home" class="btn btn-sm text-warning"
				role="button">Back</a>
			</small>

		</div>
	</div>
</body>
</html>
