/*
 * pagenationController
 */

app.controller("pagenationController", function($scope, $http, $log) {
//		alert("pagenationController");
	console.log("pagenationController start...");
	$scope.$parent.pageClass = 'page-pagenation';
	
	$scope.totalItems = 84;
	$scope.currentPage = 4;

	$scope.setPage = function (pageNo) {
	    $scope.currentPage = pageNo;
	};

	$scope.pageChanged = function() {
	    $log.log('Page changed to: ' + $scope.currentPage);
	};

	$scope.maxSize = 5;
	$scope.bigTotalItems = 175;
	$scope.bigCurrentPage = 1;
	
});