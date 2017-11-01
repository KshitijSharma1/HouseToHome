<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html >
<head>
   
    <title>Angular Sort and Filter</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

    <!-- JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
    <script src="resources/js/pd.js"></script>
<style>
body { 
     background: linear-gradient(to bottom, #ffffcc 1%, #669999 100%); 

	padding-top:80px; 
	}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container" ng-app="sortApp" ng-controller="mainController">
  
  <div class="alert alert-info">
    <p>Products</p>
  </div>
  
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search any item" ng-model="searchitem">
      </div>      
    </div>
  </form>
  
  <div class="container">
  <div class="row">
  <div  class="table-reponsive">
  <div class="col-sm-12 col-md-10 col-md-offset-1">
 
  <table class="table table-hover">
    
    <thead>
      <tr>
        <th>
          <a href="#" ng-click="sortType = 'pid'; sortReverse = !sortReverse">
            Pid
            <span ng-show="sortType == 'pid' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'pid' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </th>
        <th>
          <a href="#">
          </a>
        </th>
        <th>
          <a href="#" ng-click="sortType = 'item'; sortReverse = !sortReverse">
            Item
            <span ng-show="sortType == 'item' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'item' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </th>
        <th>
          <a href="#" ng-click="sortType = 'price'; sortReverse = !sortReverse">
          Price 
            <span ng-show="sortType == 'price' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </th>
        <th>
          <a href="#" >Qty</a>
        </th>
        <th>
          <a href="#" >View more</a>
            
        </th>
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="item in product| orderBy:sortType:sortReverse | filter:searchitem">

        <td >{{item.pid}}</td>
        <td><img src="<c:url value="/resources/Images/p1.jpg" />"/></td>
        <td>{{ item.item }}</td>
        <td>{{ item.price }}</td>
        <td>{{ item.qty }}</td>
     <td><FORM METHOD="LINK" ACTION="View"><INPUT TYPE="submit" VALUE="View More"></FORM></td>
      </tr>
    </tbody>
    
  </table>
  
  <p class="text-center text-muted">
    <a href="#" target="_blank">ALL PRODUCTS</a>
  </p>
  
  <p class="text-center">
    by <a href="HOME" target="_blank">HOUSEtoHOME</a>
  </p>
  </div>
  </div>
</div>
</div>
</div>
</body>
</html>