<%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Browse Products</title>

<style>

body { 
     background: linear-gradient(to bottom, #ffffcc 1%, #669999 100%); 

	padding-top:80px; 
	}
</style>
</head>
<body>
	<div class="container">
	<h3>Product List</h3>
	 <div  class="table-reponsive">
  <!-- <div class="col-sm-12 col-md-12 col-md-offset-1"> -->
	
	 <table class="table table-hover">
		<!-- <table class="table table-bordered table-striped"> -->
			<thead>
				<tr>
					<th>PID</th>
					<th></th>
					<th>Product Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Category</th>
					<th>Supplier</th>
				</tr>
			</thead>
			<c:forEach var="pd" items="${productList}">
				<tr>
				
					<td>${pd.id}</td>
						<td>
				<c:url var="src" value="/resources/Images/${pd.id }.jpg"></c:url>
				<img class="img-thumbnail" src="${src }" width="120" height="120" />
				</td>
					<td>${pd.name}</td>				
					<td>${pd.description}</td>
					<td>${pd.price}</td>
					<td>${pd.quantity}</td>
					<td>${pd.category.categoryDetails}</td>
					<td>${pd.supplier.supname}</td>
					
					<td>
					<c:url var="url" value="/viewproduct/${pd.id }"></c:url>
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a> 
					</td>
					
					 <c:if test="${pageContext.request.userPrincipal.name == 'admin'}"> 
					<td>
					<c:url var="delete" value="/admin/deleteproduct/${pd.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					</td>
					
					<td>
					<c:url var="edit" value="/admin/editform/${pd.id }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
				    </td>
				   
					</c:if>
					<td>
					<a href="<spring:url value="/favorite/${pd.id }" />">
					<img src="<c:url value="/resources/Images/fav.png" />" /></a>
					</td>
									
				</tr>
			</c:forEach>
		</table>
</div>
</div>
	
</body>
<br/>
</html>
<%@ include file="footer.jsp"%>