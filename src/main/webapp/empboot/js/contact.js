/*
 * contactController
 */

app.controller("contactController", function($scope, $http, $routeParams) {
//		alert("contactController");
	console.log("contactController start...");
	console.log("id = " + $routeParams.id);
	alert("id = " + $routeParams.id);
	
	$scope.$parent.pageClass = 'page-contact';
});