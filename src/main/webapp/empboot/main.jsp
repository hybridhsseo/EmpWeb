<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>main.jsp</title>

<c:url var="jquery" value="/node_modules/jquery/dist"/>
<c:url var="bootstrap" value="/node_modules/bootstrap/dist"/>
<c:url var="angular" value="/node_modules/angular"/>
<c:url var="angularSanitize" value="/node_modules/angular-sanitize"/>
<c:url var="angularAnimate" value="/node_modules/angular-animate"/>
<c:url var="angularRoute" value="/node_modules/angular-route"/>
<c:url var="angularTouch" value="/node_modules/angular-touch"/>
<c:url var="angularBootstrap" value="/node_modules/angular-bootstrap/dist"/>

<link rel="stylesheet" href="${bootstrap}/css/bootstrap.min.css"/>

<script type="text/javascript" src="${jquery}/jquery.min.js"></script>
<script type="text/javascript" src="${bootstrap}/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${angular}/angular.min.js"></script>
<script type="text/javascript" src="${angularSanitize}/angular-sanitize.min.js"></script>
<script type="text/javascript" src="${angularAnimate}/angular-animate.min.js"></script>
<script type="text/javascript" src="${angularRoute}/angular-route.min.js"></script>
<script type="text/javascript" src="${angularTouch}/angular-touch.min.js"></script>
<script type="text/javascript" src="${angularBootstrap}/ui-bootstrap.min.js"></script>
<script type="text/javascript" src="${angularBootstrap}/ui-bootstrap-tpls.min.js"></script>



<link rel="stylesheet" href="css/style.css"/>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/home.js"></script>
<script type="text/javascript" src="js/bs/grid.js"></script>
<script type="text/javascript" src="js/bs/carousel.js"></script>
<script type="text/javascript" src="js/bs/pagenation.js"></script>
<script type="text/javascript" src="js/bs/buttons.js"></script>
<script type="text/javascript" src="js/bs/datepicker.js"></script>
<script type="text/javascript" src="js/tour/searchkeyword.js"></script>
<script type="text/javascript" src="js/map.js"></script>
<script type="text/javascript" src="js/about.js"></script>
<script type="text/javascript" src="js/contact.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/signup.js"></script>
</head>
<body data-ng-controller="mainController">
<!-- ############## -->
<!-- Navigation Bar -->
<!-- ############## -->
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand active" href="#/">Home</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav" data-ng-show="login.status">
			    <li class="dropdown">
		        	<a class="dropdown-toggle" data-toggle="dropdown" href="">Bootstrap
		        	<span class="caret"></span></a>
			        <ul class="dropdown-menu">
			            <li><a href="#/bootstrap/grid">grid exam</a></li>
			            <li><a href="#/bootstrap/carousel">Carousel</a></li>
			            <li><a href="#/bootstrap/pagenation">Pagenation</a></li>
			            <li><a href="#/bootstrap/buttons">Buttons</a></li>
			            <li><a href="#/bootstrap/datepicker">Datepicker</a></li>
			            <li><a href="#">Page 3-4</a></li>
			        </ul>
		        </li>
		        <li class="dropdown">
		        	<a class="dropdown-toggle" data-toggle="dropdown" href="">SVG
		        	<span class="caret"></span></a>
			        <ul class="dropdown-menu">
			            <li><a href="#/map">map exam</a></li>
			            <li><a href="#">Page 3-2</a></li>
			            <li><a href="#">Page 3-3</a></li>
			            <li><a href="#">Page 3-4</a></li>
			        </ul>
		        </li>
		        <li><a href="#/tour/searchkeyword">SearchKeyword</a></li>
			    <li><a href="#">Page 2</a></li>
			    <li><a href="#/about">About</a></li>
			    <li><a href="#/contact">Contact</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			    <li><a href="#/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			    <li><a href="#/" data-ng-if="login.status" data-ng-click="logout()"><span class="glyphicon glyphicon-log-out" ></span> Logout</a></li>
			    <li><a href="#/login" data-ng-if="!login.status"><span class="glyphicon glyphicon-log-in" ></span> Login</a></li>
			</ul>
		</div>
	</div>
</nav>

<!-- ################ -->
<!-- ng-view Template -->
<!-- ################ -->
<div class="page {{ pageClass }}" data-ng-view
								  data-ng-swipe-left="swipeLeft()"
								  data-ng-swipe-right="swipeRight()"
								  >
<!-- default page = home -->
</div>

</body>
</html>

