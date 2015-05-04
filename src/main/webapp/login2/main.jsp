<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<title>main.jsp</title>

<c:url var="jquery" value="/jquery"/>
<c:url var="bootstrap" value="/bootstrap-3.3.4"/>
<c:url var="angular" value="/angular-1.3.15"/>

<link rel="stylesheet" href="${bootstrap}/css/bootstrap.min.css"/>

<script type="text/javascript" src="${jquery}/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="${bootstrap}/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${angular}/angular.min.js"></script>
<script type="text/javascript" src="${angular}/angular-sanitize.min.js"></script>
<script type="text/javascript" src="${angular}/angular-animate.min.js"></script>
<script type="text/javascript" src="${angular}/angular-route.min.js"></script>
<script type="text/javascript" src="${angular}/angular-touch.min.js"></script>


<link rel="stylesheet" href="css/style.css"/>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/home.js"></script>
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
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		    <span class="icon-bar"></span>
		    <span class="icon-bar"></span>
		    <span class="icon-bar"></span>
		  </button>
		  <a class="navbar-brand" href="#/">Home</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
		  <ul class="nav navbar-nav" data-ng-show="login.status">
		    <li><a href="#">Page 1</a></li>
		    <li><a href="#">Page 2</a></li>
		    <li><a href="#/about">About</a></li>
		    <li><a href="#/contact">Contact</a></li>
		  </ul>
		  <ul class="nav navbar-nav navbar-right">
		    <li><a href="#/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		    <li><a href="#/" data-ng-if="login.status" data-ng-click="logout()"><span class="glyphicon glyphicon-log-in" ></span> Logout</a></li>
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

