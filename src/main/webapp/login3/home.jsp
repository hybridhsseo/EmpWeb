<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- home.jsp -->
<style type="text/css">
	#home p {
		background: red;
	}
</style>

<div id="home">
	<h1>Angular ng-view template </h1>
	<h2>Home</h2>
	<h3>로그인 id = {{login.user.id}}</h3>
	<a href="#about" class="btn btn-success btn-lg">About</a>
	<a href="#contact" class="btn btn-danger btn-lg">Contact</a>
	<p id=result>xxx</p>
</div>

<script type="text/javascript">
	alert("home loading...");
	$('#home #result').html("Home loading...");
</script>
