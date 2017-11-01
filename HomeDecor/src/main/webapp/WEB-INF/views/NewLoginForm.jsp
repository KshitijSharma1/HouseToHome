
<%@include file="header.jsp"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Login Form Template</title>

<!-- CSS -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/form-elements.css">
<link rel="stylesheet" href="resources/css/style.css">

<!-- Favicon and touch icons -->
<link rel="shortcut icon"
	href="<c:url value="/resources/Images/login.ico" />">
<style>
body {
	padding-top: 60px;
}
;
</style>
</head>
<body>
	<!-- Top content -->
	<div class="top-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2 text">
					<h1>
						<strong>HousetoHome</strong> Login Form
					</h1>
					<div class="description">
						<div class="page-header">
							<p>Unlimited Choices.Unbeatable Prices.Free Shipping.</p>
						</div>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3 form-box">
					<div class="form-top">
						<div class="form-top-left">
							<h3>Login to our site</h3>
							<p>Enter your username and password to log on:</p>
						</div>
						<div class="form-top-right">
							<img style="padding-top: 20px" src="resources/Images/icon.ico">
							<!-- <i class="fa fa-lock"></i> -->
						</div>
					</div>
					<div class="form-bottom">
						<c:if test="${not empty msg}">
							<div class="msg">${msg}</div>
						</c:if>
						<!--  j_spring_security_check -->
						<form name="loginForm" class="login-form"
							action="<c:url value= "/j_spring_security_check"/>" method="post">
							<c:if test="${not empty error}">
								<div class="error" style="color: #ff0000;">${error}</div>
							</c:if>
							<div class="form-group">
								<label class="sr-only" for="form-username">Username</label> <input
									type="text" name="form-username" placeholder="Username..."
									class="form-username form-control" id="form-username">
							</div>
							<div class="form-group">
								<label class="sr-only" for="form-password">Password</label> <input
									type="password" name="form-password" placeholder="Password..."
									class="form-password form-control" id="form-password">
							</div>
							<button type="submit" class="btn">Sign in!</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Javascript -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.backstretch.min.js"></script>
	<script src="resources/js/scripts.js"></script>

</body>
</html>
<br>
<br>
<br>
<%@include file="footer.jsp"%>