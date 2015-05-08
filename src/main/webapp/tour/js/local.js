/*
 * localController
 */

app.controller("localController", function($scope, $http) {
//		alert("localController");
	console.log("localController start...");
	$scope.$parent.pageClass = 'page-local';
	
	$http.get("../webapp/local/city").success(function(citys) {
		console.log(citys);
		console.log(JSON.stringify(citys));
		$scope.citys = angular.copy(citys);
	}).error(function() {
		alert("server error...");
	});
	
	$scope.cityChange = function() {
		alert("cityCahnage.... = " + $scope.selectedCity);
		$http.get("../webapp/local/gus?cityCode=" + $scope.selectedCity).success(function(gus) {
			console.log(gus);
			$scope.gus = gus;
		}).error(function() {
			alert("server error...");
		});
	};
	

});
