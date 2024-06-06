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
      crossorigin="anonymous"
    />
    <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
    <title>Login</title>
  </head>
  
  <style>
	* {
    box-sizing: border-box;
  }

  body{
    background-image: url(https://wallpapercave.com/wp/wp6602995.jpg);
    background-size: cover;
    /* background-position: center center; */
    background-repeat: no-repeat;
  }

  .card {
    /* justify-content: center; */
    align-items: center;
    font-family:  "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
    "Lucida Sans", Arial, sans-serif;
    margin-top: 150px;
  }

  .card-body h1{
    color: white;
  }

  .card .form-control{
    margin: 10px 0px;
    box-shadow: 0px 3px 6px rgb(0,14,53);
  }

  .card .card-title{
    color: white;
  }

  .card button{
    background-color: #ff4e00;
    border: 1px solid #8b2b00;
    color: white;
    width: 200px;
    margin: 10px 0px;
  }

  .card button:hover{
    background-color: #ff4e00;
    border: 1px solid #8b2b00;
    color: black;
    box-shadow: 0px 3px 6px rgb(0,14,53);
  }

	
 </style>
  
  <body class="d-flex align-items-center justify-content-center">
    <div class="card login-form-card col-6 bg-transparent border-0">
      <div class="card-body">
        <h1 class="form-header card-title mb-3">
          <i class="fa fa-user-circle"></i>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-person-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"
            />
          </svg>
          Login
        </h1>
        
        
       <%--  <c:if test=${requestScope.success !=null}>
				<div class="alert alert-success text-center border border-success">
					<b>${requestScope.success !=null}</b>
				</div>
			</c:if>  --%>
			
       <%--  <c:if test=${requestScope.error !=null}>
				<div class="alert alert-danger text-center border border-danger">
					<b>${requestScope.error !=null}</b>
				</div>
			</c:if>  --%>
			
			  <%--  <c:if test=${requestScope.logged_out !=null}>
				<div class="alert alert-danger text-center border border-danger">
					<b>${logged_out}</b>
				</div>
			</c:if>  --%>
        
        <form action="/log" class="login-form" method="post">
          <div class="form-group">
            <input
              type="email"
              name="email"
              class="form-control form-control-lg"
              placeholder="enter email"
            />
          </div>

          <div class="row">
            <div class="form-group col">
              <input
                type="password"
                name="password"
                class="form-control form-control-lg"
                placeholder="enter password "
              />
            </div>
          </div>
          
          <div class="roe">
          
            <div class="form-group col">
              <input
                type="hidden"
                name="_token"
                value="${token}"
                class="form-control form-control-lg"
              />
            </div>
          </div>
          

          <div class="form-group col">
           <button class="btn btn-lg">Login</button>
           <a href="/dashbord" class="btn btn-lg" role="button">Login</a>
          </div>
        </form>

        <p class="card-text text-white my-2">
          Don't have an account?
          <span class="ms-2 text-warning"
            ><a href="/registerPage" class="text-warning">Sign up</a></span
          >
        </p>

        <small class="text-warning">
          <!-- <i class="fa fa-arrow-alt-circle-left me-2"></i> -->
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-arrow-bar-left"
            viewBox="0 0 16 16"
          >
            <path
              fill-rule="evenodd"
              d="M12.5 15a.5.5 0 0 1-.5-.5v-13a.5.5 0 0 1 1 0v13a.5.5 0 0 1-.5.5M10 8a.5.5 0 0 1-.5.5H3.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L3.707 7.5H9.5a.5.5 0 0 1 .5.5"
            />
          </svg>
          <a href="/home" class="btn btn-sm text-warning" role="button"
            >Back</a
          >
        </small>
      </div>
    </div>
  </body>
</html>
