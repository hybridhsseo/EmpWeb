<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<title>template.jsp</title>

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
	app.controller("mainController", function($scope, $http) {
		alert("mainController");
		
		$scope.questions =	[
		                     {
		                         "sel_1": "질문1",
		                         "sel_2": "양념",
		                         "sel_3": "후라이드 ",
		                         "num": 1,
		                         "name": "s1",
		                         "value" : ""
		                     },
		                     {
		                         "sel_1": "질문2",
		                         "sel_2": "사랑",
		                         "sel_3": "우정 ",
		                         "num": 2,
		                         "name": "s2",
		                         "value" : ""
		                     }];	
		
	});

</script>
</head>
<body data-ng-controller="mainController">
<hr>
	<form name="question">
		<div data-ng-repeat="question in questions">
			<input type="radio" data-ng-model="question.value" name="{{question.name}}" value="{{question.sel_2}}" />{{question.sel_2}}
			<input type="radio" data-ng-model="question.value" name="{{question.name}}" value="{{question.sel_3}}" />{{question.sel_3}}
			answer = {{question.value}}
		</div>
	</form>
	{{questions[0].name}} = {{questions[0].value}} <br>
	{{questions[1].name}} = {{questions[1].value}}

<hr>
</body>
</html>