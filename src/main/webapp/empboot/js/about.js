/*
 * aboutController
 */

app.controller("aboutController", function($scope, $http) {
//		alert("aboutController");
	console.log("aboutController start...");
	$scope.$parent.pageClass = 'page-about';
	
	$scope.content;
	$scope.copy = function() {
		alert($scope.content);
		
		$scope.content2 = angular.copy($scope.content);
	};

});
