/*
 * aboutController
 */

app.controller("aboutController", function($scope, $http, $timeout) {
//		alert("aboutController");
	console.log("aboutController start...");
	$scope.$parent.pageClass = 'page-about';
	
	
	$scope.focusMap = function() {
		$scope.map.setCenter({lat: 37.555506, lng: 126.937342});
	    $scope.map.setZoom(15);
//		google.maps.event.trigger($scope.map, "resize");
		alert("skdfj");
	};
	
	$scope.$on('mapInitialized', function(event, map) {
		console.log("mapInitialized");
	    map.setCenter({lat: 37.555506, lng: 126.937342});
	    map.setZoom(15);
	    console.log($scope.map);
	});

});
