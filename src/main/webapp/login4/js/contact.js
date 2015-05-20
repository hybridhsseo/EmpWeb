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
	
	$scope.oneAtATime = true;

	  $scope.groups = [
	    {
	      title: 'Dynamic Group Header - 1',
	      content: 'Dynamic Group Body - 1'
	    },
	    {
	      title: 'Dynamic Group Header - 2',
	      content: 'Dynamic Group Body - 2'
	    }
	  ];

	  $scope.items = ['Item 1', 'Item 2', 'Item 3'];

	  $scope.addItem = function() {
	    var newItemNo = $scope.items.length + 1;
	    $scope.items.push('Item ' + newItemNo);
	  };

	  $scope.status = {
	    isFirstOpen: true,
	    open: true,
	    isFirstDisabled: false
	  };
	
	
});