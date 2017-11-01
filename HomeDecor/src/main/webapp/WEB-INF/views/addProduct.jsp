<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



</head>
<body>

<%@include file="header.jsp" %>

<div class="container-wrapper">
        <div class="page-header">
		<h1>Add Product</h1>
		<p class="lead">Fill the below information to add a product:</p>
			</div>
			

<div class="container">
<div class="row">
<div class="form-horizontal">
			<form:form  action="insertProduct" method="post" commandName="product" enctype="multipart/form-data">


				<div class="form-group">
					<label class="control-label col-sm-2" for="name">Name</label>
					
					<div class="col-md-6">
					<form:input path="name" id="name" class="form-Control" />
					</div>			
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" path="image">Image</label>
					<div class="col-md-6">
					<form:errors path="image" class="form-control" />
					<form:input type="file" path="image" class="form-Control" />
				</div>
				</div>
				
				<div class="form-group">
				<label class="control-label col-sm-2" for="description">Description</label>
				<div class="col-md-6">
				<form:errors path="description" class="form-control" />
					<form:textarea path="description" id="description" class="form-Control" />
				</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="price">Price</label>
					<div class="col-md-6">
					<form:errors path="price" class="form-control" />
					<form:input path="price" id="price" class="form-Control" />
				</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="quantity">quantity</label>
					<div class="col-md-6">
					<form:errors path="quantity" class="form-control" />
					<form:input path="quantity" id="quantity" class="form-Control" />
				</div>
				</div>

				<br />
				<br />

				<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" value="submit" class="btn btn-primary">
				</div>

			</form:form>
			</div>
			</div>
			</div>	
			</div>
</body>
</html>