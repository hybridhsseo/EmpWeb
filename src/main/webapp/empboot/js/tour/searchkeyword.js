/*
 * searchkeywordController
 */

app.controller("searchkeywordController", function($scope, $http) {
//		alert("searchkeywordController");
	console.log("searchkeywordController start...");
	$scope.$parent.pageClass = 'page-searchkeyword';
	
	$scope.areacodes = [
			{
                "code": 1,
                "name": "서울",
                "rnum": 1
            },
            {
                "code": 2,
                "name": "인천",
                "rnum": 2
            },
            {
                "code": 3,
                "name": "대전",
                "rnum": 3
            }
	];
	
	var params = {
			params : { keyword : '궁궐'}
	};
	
	$scope.areacode = 2;
	$scope.convert = function(areacode) {
		return "서울" + areacode;
	};
	
	$scope.keyword = "궁궐";
	
	var kvalue = encodeURI($scope.keyword);
	
	$http.get("../webapp/tour/searchkeyword?keyword=" + kvalue).success(function(response) {
		$scope.response = response;
		console.log(response);
	}).error(function() {
		alert("server error...");
	});
	
});
