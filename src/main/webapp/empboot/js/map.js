/*
 * mapController
 */

app.controller("mapController", function($scope, $http) {
//		alert("mapController");
	console.log("mapController start...");
	$scope.$parent.pageClass = 'page-map';
	
	$scope.mouseover = function(event) {
		var _path = event.target;
		var city_name = _path.id;
		var province = $(_path).parent()[0].id;
	
		d3.select(_path).style("fill", "red");
		console.log(province, city_name);
	};
	
	$scope.mouseout = function(event) {
		var _path = event.target;
		d3.select(_path).style("fill", "#B9B9B9");
	};
	
});