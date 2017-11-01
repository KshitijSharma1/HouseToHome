<%@ include file="header.jsp" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
<style>
body { 
	background-color: ;
	padding-top:80px;
	
	
	};

</style>
<script>
$(function(){
$('input[name=mfg]').datepicker({
	format:'YYYY-mm-dd'
});	
});
</script>
</head>
<body>


<div class="container">
<div class="row">
<div class="form-horizontal">
<form:form action="${pageContext.request.contextPath}/admin/addNewProduct"  commandName="productcommand" enctype="multipart/form-data">

<div class="form-group">
<label for="id"></label>
<form:hidden  path=""/>
</div>


<div class="form-group" >
<label class="col-md-4 control-label"for="name">Product Name</label>
<div class="col-md-6">
<form:input path="name" class="form-control"/>
<form:errors path="name"  cssStyle="color:#ff0000"/>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="description">Description</label>
<div class="col-md-6">
<form:input path="description" class="form-control"/>
<form:errors path="description" cssStyle="color:#ff0000"/>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label" for="price">Price</label>
<div class="col-md-6">
<form:input path="price" class="form-control" />
<form:errors path="price" cssStyle="color:#ff0000"/>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="quantity">Quantity</label>
<div class="col-md-6">
<form:input path="quantity" class="form-control"/>
<form:errors path="quantity" cssStyle="color:#ff0000"/>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="mfg">Mfg Date</label>
<div class="col-md-6">
<form:input path="mfg" class="form-control"/>
<form:errors path="mfg" cssStyle="color:#ff0000"/>
</div>
</div>


<%-- <div class="form-group">
<label class="col-md-4 control-label" for="category">Category</label>
<div class="col-md-6">
<c:forEach var="c" items="${categories}">
<form:radiobutton path="category.id" value="${c.id}"/>${c.categoryDetails }
</c:forEach>
</div>
</div> --%>

<div class="form-group">
<label class="col-md-4 control-label" for="category">Category</label>
<div class="col-md-6">
<%-- <form:select path="category.categoryDetails" placeholder="SELECT" items="${categories}" itemValue="categoryDetails" itemLabel="categoryDetails" class="form-control"/> --%>

<form:select path="category.categoryDetails" onchange="selectcategory(${categories})" class="form-control" >
    <form:option value="" label="<---Select Category--->" />
    <form:options items="${categories}" itemLabel="categoryDetails" itemValue="categoryDetails" />
</form:select>


</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label" for="supplier">Supplier</label>
<div class="col-md-6">
<%-- <form:select path="supplier.supname" items="${suppliers}" itemValue="supname" itemLabel="supname" class="form-control" /> --%>
<form:select path="supplier.supname" onchange="selectsupplier(${suppliers})" class="form-control" >
    <form:option value="" label="<---Select Supplier--->" />
    <form:options items="${suppliers}" itemLabel="supname" itemValue="supname" />
</form:select>

</div>
</div>



<%--  <div class="form-group">
<label class="col-md-4 control-label" for="supplier">Supplier</label>
<div class="col-md-6">
<c:forEach var="s" items="${suppliers}">
<form:radiobutton path="supplier.sid" value="${s.sid}"/>${s.supname }
</c:forEach>
</div>
</div>  --%>



<div class="form-group">
<label class="col-md-4 control-label" for="image">Image</label>
<div class="col-md-6"></div>
<form:input path="image" type="file"/>

</div>

<!--  <input type="submit" value="Add Product" class="btn btn-default">-->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Add Product</button>
  </div>
</div>


</form:form>
</div>
</div>
</div>

</body>
</html>