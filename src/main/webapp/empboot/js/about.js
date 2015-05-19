/*
 * aboutController
 */

app.controller("aboutController", function($scope, $http) {
//		alert("aboutController");
	console.log("aboutController start...");
	$scope.$parent.pageClass = 'page-about';
	
	$scope.$on('mapInitialized', function(event, map) {
		alert("mapInitialized");
	    map.setCenter({lat: 37.555506, lng: 126.937342});
	    map.setZoom(15);
	});

});
