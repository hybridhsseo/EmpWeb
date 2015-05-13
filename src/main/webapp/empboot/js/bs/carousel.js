/*
 * carouselController
 */

app.controller("carouselController", function($scope, $http) {
//		alert("carouselController");
	console.log("carouselController start...");
	$scope.$parent.pageClass = 'page-carousel';
	
	$scope.myInterval = 5000;
	var slides = $scope.slides = [];
	
	$scope.addSlide = function() {
		var newWidth = 600 + slides.length + 1;
		slides.push({
			image: 'http://placekitten.com/' + newWidth + '/300',
//			image: 'http://www.placehold.it/' + newWidth + 'x300',
		    text: ['More','Extra','Lots of','Surplus'][slides.length % 4] + ' ' +
		        ['Cats', 'Kittys', 'Felines', 'Cutes'][slides.length % 4]
			
		});
			
	};
	  
	for (var i=0; i<4; i++) {
		$scope.addSlide();
	}
	
});