/*
 * contactController
 */

app.controller("contactController", function($scope, $http, $routeParams) {
//		alert("contactController");
	console.log("contactController start...");
	$scope.$parent.pageClass = 'page-contact';
	
	alert("id=" + $routeParams.id);
	
	$scope.id = $routeParams.id;
	
});