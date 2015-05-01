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

<script type="text/javascript">
	var app = angular.module("myApp", ["ngSanitize", "ngAnimate", "ngRoute", "ngTouch"]);
	app.config(function($routeProvider) {

	    $routeProvider
	        // home page
	        .when('/', {
	            templateUrl: 'home.jsp',
	            controller: 'homeController'
	        })

	        // about page
	        .when('/about', {
	            templateUrl: 'about.jsp',
	            controller: 'aboutController'
	        })

	        // contact page
	        .when('/contact', {
	            templateUrl: 'contact.jsp',
	            controller: 'contactController'
	        })
	    
		 	// otherwise page
	    	.otherwise({redirectTo: '/'});

	});
	
	app.controller("mainController", function($scope, $http, $rootScope, $templateCache) {
		alert("mainController");
		
		$scope.pageClass = 'page-home';
	    
	    $rootScope.$on('$routeChangeStart', function(event, next, current) {
	    		if (typeof current != 'undefined') {
	        		$templateCache.removeAll();
	           		console.log("current.templateUrl=" + current.templateUrl);
	    		}
	    });
	});

</script>
<script type="text/javascript" src="js/home.js"></script>
<script type="text/javascript" src="js/about.js"></script>
<script type="text/javascript" src="js/contact.js"></script>
</head>
<body data-ng-controller="mainController">
<div class="container">
	<a href="#/" class="btn btn-primary">Home</a>
	<a href="#/about" class="btn btn-primary">About</a>
	<a href="#/contact" class="btn btn-primary">Contact</a>
</div>

<div class="page {{ pageClass }}" data-ng-view>
<!-- default page = home -->
</div>

</body>
</html>