<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- carousel.jsp -->
<style type="text/css">
	#carousel div {
		border: 1px solid red;
	}
</style>

<div id="carousel" class="container">
<h1>Carousel example</h1>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    <li data-target="#myCarousel" data-slide-to="1"></li>
	    <li data-target="#myCarousel" data-slide-to="2"></li>
	    <li data-target="#myCarousel" data-slide-to="3"></li>
	  </ol>
	
	  <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	    <div class="item active">
	      <img src="http://www.placehold.it/400x300" alt="Chania">
	    </div>
	
	    <div class="item">
	      <img src="http://www.placehold.it/400x301" alt="Chania">
	    </div>
	
	    <div class="item">
	      <img src="http://www.placehold.it/400x302" alt="Flower">
	    </div>
	
	    <div class="item">
	      <img src="http://www.placehold.it/400x303" alt="Flower">
	    </div>
	  </div>
	
	  <!-- Left and right controls -->
	  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>

</div>

<script type="text/javascript">
// 	$('#grid #result').html("Grid loading...");
</script>
