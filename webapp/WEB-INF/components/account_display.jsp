<%@taglib uri="http://java.sun.com./jsp/jstl/core" prefix="c"%>
<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%-- <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	
	<div class="container d-flex">
       
        <button id="add-acount-btn" class="btn btn-lg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-credit-card-2-back-fill" viewBox="0 0 16 16">
                <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5H0zm11.5 1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h2a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM0 11v1a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-1z"/>
              </svg>
               Add New Account</button>
          <button id="transact-btn" class="btn ms-auto btn-lg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock-history" viewBox="0 0 16 16">
                <path d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022zm2.004.45a7 7 0 0 0-.985-.299l.219-.976q.576.129 1.126.342zm1.37.71a7 7 0 0 0-.439-.27l.493-.87a8 8 0 0 1 .979.654l-.615.789a7 7 0 0 0-.418-.302zm1.834 1.79a7 7 0 0 0-.653-.796l.724-.69q.406.429.747.91zm.744 1.352a7 7 0 0 0-.214-.468l.893-.45a8 8 0 0 1 .45 1.088l-.95.313a7 7 0 0 0-.179-.483m.53 2.507a7 7 0 0 0-.1-1.025l.985-.17q.1.58.116 1.17zm-.131 1.538q.05-.254.081-.51l.993.123a8 8 0 0 1-.23 1.155l-.964-.267q.069-.247.12-.501m-.952 2.379q.276-.436.486-.908l.914.405q-.24.54-.555 1.038zm-.964 1.205q.183-.183.35-.378l.758.653a8 8 0 0 1-.401.432z"/>
                <path d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0z"/>
                <path d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5"/>
              </svg>
               Transcations</button>
          
          
    </div>

    <!-- right slide -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasRightLabel" class="text-white">Create / Add an Account</h5>
            <hr style="font-weight: bolder; color: white;">
            <!-- <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button> -->
        </div>
        <div class="offcanvas-body">
            <div class="card">
                <div class="card-body">
                    <form action="" class="add-account-form">
                        <div class="form-group">
                            <label for="">Enter Account Name</label>
                            <input type="text" name="account_name" class="form-control" placeholder="Enter Account Name">
                        </div>

                        <div class="form-group mb-3">
                            <label for="">Enter Account Name</label>
                            <select name="account_type" id="" class="form-control">
                                <option value="">--Select Account Type--</option>
                                <option value="check">Check</option>
                                <option value="savings">Savings</option>
                                <option value="business">Business</option>
                            </select>
                        </div>
                        
                        <div class="form-group my-2">
                            <button id="add-acount-btn" class="btn btn-md transact-btn">Add Account</button>
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- container left canves -->
    <div class="container">
        <div class="offcanvas offcanvas-start show" tabindex="-1" id="offcanvas" aria-labelledby="offcanvasLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasLabel">Offcanvas</h5>
              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              Content for the offcanvas goes here. You can place just about any Bootstrap component or custom elements here.
            </div>
          </div>
    </div>

    <!-- total balance display -->
    <div class="container d-flex py-3">
        <h1 class="me-auto">Total Account Balance</h1>
        <h2 class="ms-auto">
        <c:if test="${requestScope.totalBalance!=null}">
        <c:out value="${totalBalance}"/>
        </c:if>
        </h2>
    </div>

    <!-- container accordian -->
    <div class="container"></div>
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-${account_id}" aria-expanded="false" aria-controls="flush-collapseOne">
                  Accordion Item #1
                </button>
              </h2>
              <div id="flush-${account.account_id}" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                <ul class="list-group list-group-flush">
                	<li class="list-group-items d-flex">Account Name <span class="ms-auto"><b>${account.account_name}</b></a></span> </li>
                	<li class="list-group-items d-flex">Account Number <span class="ms-auto"><b>${account.account_number}</b></a></span></li>
                	<li class="list-group-items d-flex">Account Type <span class="ms-auto"><b>${account.account_type}</b></a></span></li>
                	<li class="list-group-items d-flex">Account Balance <span class="ms-auto"><b>${account.account.balance}</b></a></span></li>
                	<li class="list-group-items d-flex">Created at<span class="ms-auto"><b>${account.account.created_at}</b></a></span></li>
                </ul>
              </div>
            </div>
            
            <!-- accordion menu -->
            <div class="container">
            <c:if test"${requestScope.userAccount != null}">
            	<c:foreach items=${ requestScope.userAccount} var = "account">
            		${account.account_name }
            	</c:foreach>
            </c:if>
            </div>
           <%--  <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                  Accordion Item #2
                </button>
              </h2>
              <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                  Accordion Item #3
                </button>
              </h2>
              <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
              </div>
            </div> --%>
          </div>
    </div>
	
	
</body>
</html>