/*
 * myApp Module
 */

var app = angular.module("myApp", ["ngSanitize", "ngAnimate", "ngRoute", "ngTouch", "ui.bootstrap"]);

app.filter('convertAreacode', function () {
	  return function (areacode, scope) {

		  var areaName="xx";
		  for (var i=0; i<scope.areacodes.length; i++) {
			  console.log("code=" + scope.areacodes[i].code);
			  console.log("areacode=" + areacode);
			  if (scope.areacodes[i].code == areacode)
				  areaName = scope.areacodes[i].name;
		  }
		  
		  return areaName;
	  };
});

app.config(function($routeProvider) {

    $routeProvider
        // home page
        .when('/', {
            templateUrl: 'home.jsp',
            controller: 'homeController'
        })

        // grid page
        .when('/bootstrap/grid', {
            templateUrl: 'bootstrap/grid.jsp',
            controller: 'gridController'
        })
        
        // carousel page
        .when('/bootstrap/carousel', {
            templateUrl: 'bootstrap/carousel.jsp',
            controller: 'carouselController'
        })
        
        // pagenation page
        .when('/bootstrap/pagenation', {
            templateUrl: 'bootstrap/pagenation.jsp',
            controller: 'pagenationController'
        })
        
         // buttons page
        .when('/bootstrap/buttons', {
            templateUrl: 'bootstrap/buttons.jsp',
            controller: 'buttonsController'
        })
        
         // datepicker page
        .when('/bootstrap/datepicker', {
            templateUrl: 'bootstrap/datepicker.jsp',
            controller: 'datepickerController'
        })
        
          // searchkeyword page
        .when('/tour/searchkeyword', {
            templateUrl: 'tour/searchkeyword.jsp',
            controller: 'searchkeywordController'
        })
        
         // map page
        .when('/map', {
            templateUrl: 'map.jsp',
            controller: 'mapController'
        })
        
        // about page
        .when('/about', {
            templateUrl: 'about.jsp',
            controller: 'aboutController'
        })

        // contact page
        .when('/contact/:id', {
            templateUrl: 'contact.jsp',
            controller: 'contactController'
        })
        
        // signup page
        .when('/signup', {
            templateUrl: 'signup.jsp',
            controller: 'signupController'
        })
        
        // login page
        .when('/login', {
            templateUrl: 'login.jsp',
            controller: 'loginController'
        })
    
	 	// otherwise page
    	.otherwise({redirectTo: '/'});

});

/*
 * mainController
 */
app.controller("mainController", function($scope, $http, $rootScope, $templateCache, $location) {
	alert("mainController");
	
    $rootScope.$on('$routeChangeStart', function(event, next, current) {
    		if (typeof current != 'undefined') {
//        		$templateCache.removeAll();
           		console.log("current.templateUrl=" + current.templateUrl);
    		}
    });
    
    $scope.swipeLeft = function() {
    	console.log("swipeleft = " + $location.path());
    };
    
    $scope.swipeRight = function() {
    	console.log("swipeRight = " + $location.path());
    };
    
    /*
	 * 로그아웃 상태 및 유저정보
	 */
    $scope.login = {
    		status : false
    }
    
    /*
	 * 로그아웃 처리
	 */
    $scope.logout = function() {
    	console.log("logout...");
    	
    	$http.get("../webapp/login/logout").success(function(loginstatus) {
			console.log(loginstatus);
			$scope.login = loginstatus;
		}).error(function() {
			alert("server error...");
		});
    	
		$location.path("/home");
	};
	
	/*
	 * 로그인 유무 체크
	 */
	$http.get("../webapp/login/logincheck").success(function(loginstatus) {
			console.log("로그인 유무 체크 = " + JSON.stringify(loginstatus));
			$scope.login = loginstatus;
	}).error(function() {
		alert("server error...");
	});
});
