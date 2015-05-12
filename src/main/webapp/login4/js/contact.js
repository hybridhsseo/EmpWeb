/*
 * contactController
 */

app.controller("contactController", function($scope, $http, $route, $templateCache) {
//		alert("contactController");
	console.log("contactController start...");
	$scope.$parent.pageClass = 'page-contact';
	
	$scope.reload = function() {
		alert("reload");
//		var currentPageTemplate = $route.current.templateUrl;
//		$templateCache.remove(currentPageTemplate);
		$route.reload();
	};
});