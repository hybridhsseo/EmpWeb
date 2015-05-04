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
	        
	        // login page
	        .when('/login', {
	            templateUrl: 'login.jsp',
	            controller: 'loginController'
	        })
	    
		 	// otherwise page
	    	.otherwise({redirectTo: '/'});

	});
	
	app.controller("mainController", function($scope, $http, $rootScope, $templateCache, $location) {
		alert("mainController");
		
	    $rootScope.$on('$routeChangeStart', function(event, next, current) {
	    		if (typeof current != 'undefined') {
	        		$templateCache.removeAll();
	           		console.log("current.templateUrl=" + current.templateUrl);
	    		}
	    });
	    
	    $scope.swipeLeft = function() {
	    	console.log("swipeleft = " + $location.path());
	    };
	    
	    $scope.swipeRight = function() {
	    	console.log("swipeRight = " + $location.path());
	    };
	    
	    /*
		 * 로그아웃 상태 및 유저정보
		 */
	    $scope.login = {
	    		status : false
	    }
	    
	    /*
		 * 로그아웃 처리
		 */
	    $scope.logout = function() {
	    	console.log("logout...");
	    	
	    	$http.get("../webapp/login/logout").success(function(loginstatus) {
				console.log(loginstatus);
				$scope.login = loginstatus;
			}).error(function() {
				alert("server error...");
			});
	    	
			$location.path("/home");
		};
		
		/*
		 * 로그인 유무 체크
		 */
		$http.get("../webapp/login/logincheck").success(function(loginstatus) {
				console.log("로그인 유무 체크 = " + JSON.stringify(loginstatus));
				$scope.login = loginstatus;
		}).error(function() {
			alert("server error...");
		});
	});

</script>
<link rel="stylesheet" href="css/style.css"/>
<script type="text/javascript" src="js/home.js"></script>
<script type="text/javascript" src="js/about.js"></script>
<script type="text/javascript" src="js/contact.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body data-ng-controller="mainController">
<div class="container">
	<a href="#/" class="btn btn-primary">Home</a>
	<span data-ng-if="login.status">
		<a href="#/about" class="btn btn-primary">About</a>
		<a href="#/contact" class="btn btn-primary">Contact</a>
	</span>
	<a href="#/login" class="btn btn-success btn-sm" data-ng-if="!login.status">Login</a>
	<a href="#/login" class="btn btn-success btn-sm" data-ng-if="login.status" data-ng-click="logout()">Logout</a>
</div>

<div class="page {{ pageClass }}" data-ng-view
								  data-ng-swipe-left="swipeLeft()"
								  data-ng-swipe-right="swipeRight()"
								  >
<!-- default page = home -->
</div>

</body>
</html>

