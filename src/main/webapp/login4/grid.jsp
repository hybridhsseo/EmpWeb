<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- grid.jsp -->
<style type="text/css">
	#grid div {
		border: 1px solid red;
	}
</style>

<div id="grid" class="container">
	<div class="row">
		<div class="col-sm-4"><h1>Grid System Example</h1></div>
		<div class="col-sm-4"><h1>Angular ng-view template </h1></div>
		<div class="col-sm-4"><img class="img-responsive" src="http://www.placehold.it/400x400"/></div>
	</div>
	<div class="row">
		<div class="col-sm-6"><img class="img-responsive img-rounded" src="http://www.placehold.it/700x700"/></div>
		<div class="col-sm-6">
			<h1>Angular ng-view template </h1>
			<h3>로그인 id = {{login.user.id}}</h3>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-3"><a href="#/home" class="btn btn-success btn-lg">Home</a></div>
		<div class="col-sm-3"><a href="#/about" class="btn btn-danger btn-lg">About</a></div>
		<div class="col-sm-3"><a href="#/contact" class="btn btn-danger btn-lg">Contact</a></div>
		<div class="col-sm-3"><a href="#/login" class="btn btn-danger btn-lg">login</a></div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<p id=result>xxx</p>
		</div>
	</div>
</div>

<script type="text/javascript">
	$('#grid #result').html("Grid loading...");
</script>
