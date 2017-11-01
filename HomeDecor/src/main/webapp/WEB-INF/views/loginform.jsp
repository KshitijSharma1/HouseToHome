<%@include file="header.jsp"%>
<style>
body { 
	background-color:#d9d9d9 ;
	padding-top:80px;
	
	
	};

</style>

<div class="container">
<div class="row">
<div class="form-horizontal">
<h2>Login with Username and Password</h2>
<c:if test = "${not empty msg}">
<div class="msg">${msg}</div>
</c:if>
<!--j_spring_security_check"-->
<form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
<c:if test="${not empty error}">
<div class="error" style="color: #ff0000;">${error}</div>
</c:if>
<div class="form-group">
<label class=" col-md-4 control-label" for="username">Username: </label>
<div class="col-md-4">
<input type="text" id="username"  name="username" class="form-control"/>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label" for="password">Password:</label>
<div class="col-md-4">
<input type="password" id="password"  name="password" class="form-control"/>
</div>
</div>
 <div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary btn-md">LogIn</button>
  </div>
</div>

<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</div>
</div>
</div>
