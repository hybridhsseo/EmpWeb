<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
<link rel="stylesheet" href="bootstrap-3.3.4/css/bootstrap.min.css"/>

<c:url var="jquery" value="/jquery"/>
<c:url var="bootstrap" value="/bootstrap-3.3.4"/>
<c:url var="angular" value="/angular-1.3.15"/>

<script type="text/javascript" src="${jquery}/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="${bootstrap}/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${angular}/angular.min.js"></script>
<script type="text/javascript" src="${angular}/angular-sanitize.min.js"></script>
<script type="text/javascript" src="${angular}/angular-animate.min.js"></script>
<script type="text/javascript" src="${angular}/angular-route.min.js"></script>

<script type="text/javascript">
	var app = angular.module("myApp", ["ngSanitize", "ngAnimate", "ngRoute"]);
	app.controller("myController", function($scope, $http) {
// 		alert("myController");
		$scope.loginresult={};

		$scope.login = function() {
			$http.post("webapp/login/login", {id : 'webapp', password : '1234'}).success(function(loginresult) {
				alert("loginresult = " + JSON.stringify(loginresult));
				console.log(loginresult);
				$scope.loginresult = loginresult;
			}).error(function() {
				alert("login error...");
			});
		};
		
		$scope.logincheck = function() {
			$http.get("webapp/login/logincheck").success(function(loginresult) {
				alert("loginresult = " + JSON.stringify(loginresult));
				console.log(loginresult);
				$scope.loginresult = loginresult;
			}).error(function() {
				alert("logincheck error...");
			});
		};
		
		$scope.logout = function() {
			$http.get("webapp/login/logout").success(function(loginresult) {
				alert("loginresult = " + JSON.stringify(loginresult));
				console.log(loginresult);
				$scope.loginresult = loginresult;
			}).error(function() {
				alert("loginout error...");
			});
		};
		
	});

</script>
</head>
<body data-ng-controller="myController">
<hr>
<button ng-click="login()">login</button>
<button ng-click="logout()">logout</button>
<button ng-click="logincheck()">logincheck</button>
<hr>
<hr>
<h1>{{loginresult}}</h1>
<h1>{{loginresult.status}}</h1>
<h1>{{loginresult.user.id}}</h1>
<h1>{{loginresult.user.password}}</h1>





</body>
</html>