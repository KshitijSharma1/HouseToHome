<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp"%>
<!-- carousel  -->
<style>
h1 {
	color: #66cc00;
}

body {
	background: whitesmoke;
}
</style>
<div class="container-fluid hero-slide">
	<div class="row">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox" width="100%"
				height="500px">
				<div class="item active">
					<img class="First "
						src="<c:url value="/resources/Images/lanterns.jpg" />" alt="First">
				</div>

				<div class="item">
					<img class="second"
						src="<c:url value="/resources/Images/homebanner3.jpg" />" alt="second">
					<div class="container">
						<div class="carousel-caption">
							<p>
								<a class="btn btn-lg btn-success" href="signup" role="button">Buy
									Now</a>
							</p>
						</div>
					</div>
				</div>

				<div class="item">
					<img class="third" src="<c:url value="/resources/Images/dt.jpg" />"
						alt="third">
					<div class="container">
						<div class="carousel-caption">
							<p>
								<a class="btn btn-lg btn-success" href="https://www.google.com"
									role="button">Buy Now</a>
							</p>
						</div>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</div>

<!-- carousel end -->

<!-- page header -->

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1 align="center">Happy Furniture to You!</h1>
				<h2 align="center">
					<small>Unlimited Choices.Unbeatable Prices.Free Shipping.</small>
				</h2>
			</div>
			<!--  <p class="lead">Some Solid leading copy will hepl get your user engagedd. Use this area to come up with something real and nice.</p>
<a href="" class="btn btn-large btn-primary">Click a nice big button</a>
<a href="" class="btn btn-large btn-link">or a secondary link</a>-->
		</div>
	</div>
</div>
<!-- page header end -->

<!-- panel -->

<div class="container">
	<!-- <div class="row" id="featureHeading">
<div class="col-12">
<h2>features</h2>
<p class="lead">kss sdsfjj sdiosnck kskowi depak os isak  dhofgod sjkjsk</p>
</div>
</div>-->
	<div class="row" id="features">
		<div class="col-lg-4 ">  
				<a href="#"><img
					src="<c:url value="resources/Images/neu.jpg" />" alt="HTML5"
					class="img-circle" width="140" height="140"></a>
				<h2>Entertainment Units</h2>
				<p>GATHER YOUR CROWD</p>
				<p>Starting Rs. 5,699</p>
		 	</div> 

		<div class="col-lg-4 ">
			<a href="#"><img src="<c:url value="resources/Images/w.jpg" />"
				alt="HTML5" class="img-circle" width="140" height="140"></a>
			<h2>Wardrobes</h2>
			<p>STYLISH, FUNCTIONAL FURNITURE</p>
			<p>Starting Rs. 7,899</p>
		</div>
	
		<div class="col-lg-4">
			<a href="#"><img src="<c:url value="resources/Images/vase.jpg" />"
			alt="HTML5" class="img-circle" width="140" height="140"></a>
			<h2>Vases & Flowers</h2>
			<p>FLORAL ARRANGEMENTS MADE</p>
			<p>Starting Rs. 2,990</p>
		</div>
	</div>
</div>
<!-- panel end -->

<%@include file="footer.jsp"%>





