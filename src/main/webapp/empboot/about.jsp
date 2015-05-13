<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- about.jsp -->

<h1>Angular ng-view template </h1>
<h2>About</h2>

<a href="#/" class="btn btn-success btn-lg">Home</a>
<a href="#/contact" class="btn btn-danger btn-lg">Contact</a>
<hr>
<button data-ng-click="copy()">copy</button>
<textarea wrap="hard" name="content" data-ng-model="content">
</textarea>

<div>
{{content}}
</div>

<textarea name="content" data-ng-model="content2">

</textarea>