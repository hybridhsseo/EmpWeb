<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<title>swipe.jsp</title>
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
<script type="text/javascript" src="${angular}/angular-touch.min.js"></script>

<script type="text/javascript">
	var app = angular.module("myApp", ["ngSanitize", "ngAnimate", "ngRoute", "ngTouch"]);
	app.controller("mainController", function($scope, $http) {
// 		alert("mainController");
		console.log("mainController start...");
		
		$scope.swipe = {
			status : '',
			num : 10
		}
		
		$scope.swipeleft = function() {
			$scope.swipe.status='left';
			$scope.swipe.num -= 1;
		};
		$scope.swiperight = function() {
			$scope.swipe.status='right';
			$scope.swipe.num += 1;
		};
	
		
	});

</script>
<style type="text/css">
	body {
		border: 1px solid red;
		width: 100%;
		height: 400px;
		
	}
</style>
</head>
<body data-ng-controller="mainController"
	  data-ng-swipe-left="swipeleft()"
	  data-ng-swipe-right="swiperight()"      
>
<h1>{{swipe.status}}</h1>
<h1>{{swipe.num}}</h1>

<div data-ng-show="swipe.num == 10" style="border: 1px solid red;">
	<h1>num이 10 일 때 보입니다</h1>
</div>

</body>
</html>