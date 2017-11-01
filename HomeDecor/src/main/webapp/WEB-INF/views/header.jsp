<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>HOUSEtoHOME</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="<c:url value="/resources/Images/icon.ico"/>">
<!--  <link rel="stylesheet" href="">
<script src="resources/Bootstrap/css/bootstrap.min.css"></script>
<script src="resources/Bootstrap/js/bootstrap.min.js"></script>-->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- Angular Js -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<!-- JQuery -->
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<link rel="stylesheet"
	href="<c:url value="/resources/css/main.css" />">
<%@include file="contact.jsp"%>
  <style >
    /*  .navbar{
       /*  background-color:#;
        background-image: none; */
      
        background: rgba(0,0,0,0.5) !important; 
        */
   
     .hero-slide{margin-top:0px;} 

</style>  
</head>
<body>
 
          
	<div class="navbar-wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<c:url value="/HOME" />">HOUSEtoHOME</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse ">
					<ul class="nav navbar-nav ">
						<li class="active"><a href="<c:url value="/HOME"/>"><i
								class="fa fa-home"></i></a></li>
						<li><a href="#">About</a></li>
						<li><a href="<c:url value="/CONTACT" />" data-toggle="modal"
							data-target="#contactmodal">Contact Us</a></li>
						<%-- <li><a href="<c:url value="/PRODUCTS" />">Products</a></li> --%>
						<li><a href="<c:url value="/prodlist" />">Products</a></li>
						
						
						
						
						 <c:if test="${pageContext.request.userPrincipal.name == 'admin'}"> 
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">ADD <span class="caret"></span></a>  
								<ul class="dropdown-menu">
									<!-- <li><a href="admin/addProduct">Add Product</a></li> -->
									<li><a href="<c:url value="/admin/addProduct" />">Add
											Product</a></li>
									<li><a href="<c:url value="/addCategory" />">Add
											Category</a></li>
									<li><a href="<c:url value="/addSupplier" />">Add
											Supplier</a></li>
								</ul></li>
					

						
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">VIEW <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<%-- <li><a href="<c:url value="/prodlist" />">View all
										Products</a></li> --%>
								<li><a href="<c:url value="/suplist" />">View all
										Suppliers</a></li>
								<li><a href="<c:url value="/catlist" />">View all
										Categories</a></li>
							</ul></li>
								</c:if>

					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${pageContext.request.userPrincipal.name != null}">
							<li><a>Welcome:
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>

							<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
								<li><a href="<c:url value="/admin"/>">Admin</a></li>
							</c:if>

						</c:if>
						
						<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
						<li><a href="<c:url value="/cart/getCartId"/>" class="glyphicon glyphicon-shopping-cart"></a></li>
						</c:if>
						
						<c:if test="${pageContext.request.userPrincipal.name == null}">
							<li><a href="<c:url value="/signup"/>"> <span
									class="glyphicon glyphicon-user"></span> Sign Up
							</a></li>
							<li><a href="<c:url value="/login"/>"> <span
									class="glyphicon glyphicon-log-in"></span> Login
							</a></li>
							<li><a href="www.google.com"><i class="fa fa-search"></i></a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</div> 