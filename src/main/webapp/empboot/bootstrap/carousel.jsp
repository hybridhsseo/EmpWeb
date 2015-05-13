<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- carousel.jsp -->
<style type="text/css">
	#carousel div {
/* 		border: 1px solid red; */
	}
</style>

<div id="carousel" class="container">
<h1>Carousel example</h1>

	<div style="height: 305px">
	    <carousel interval="myInterval">
	      <slide ng-repeat="slide in slides" active="slide.active">
	        <img ng-src="{{slide.image}}" style="margin:auto;">
	        <div class="carousel-caption">
	          <h4>Slide {{$index}}</h4>
	          <p>{{slide.text}}</p>
	        </div>
	      </slide>
	    </carousel>
	</div>
  
	<div class="row">
	    <div class="col-md-6">
	      <button type="button" class="btn btn-info" ng-click="addSlide()">Add Slide</button>
	    </div>
	    <div class="col-md-6">
	      Interval, in milliseconds: <input type="number" class="form-control" ng-model="myInterval">
	      <br />Enter a negative number or 0 to stop the interval.
	    </div>
    </div>
  
</div>

<script type="text/javascript">
// 	$('#grid #result').html("Grid loading...");
</script>
