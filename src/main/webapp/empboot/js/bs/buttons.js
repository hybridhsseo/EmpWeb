/*
 * buttonsController
 */

app.controller("buttonsController", function($scope, $http, $log) {
//		alert("buttonsController");
	console.log("buttonsController start...");
	$scope.$parent.pageClass = 'page-buttons';
	
	$scope.singleModel = 1;

	$scope.radioModel = 'Middle';

	$scope.checkModel = {
	    left: false,
	    middle: true,
	    right: false
	};

});