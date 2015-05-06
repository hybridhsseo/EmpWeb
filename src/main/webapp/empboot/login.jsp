<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- login.jsp -->
<div style="border: 1px solid red; margin: auto;" class="container">
<h1>로그인</h1>


<form novalidate="novalidate" data-ng-submit="submit()" >
<input type="text" name="id" data-ng-model="id"/>
<input type="password" name="password" data-ng-model="password"/><br>

<!-- <hr> -->
<input type="radio" name="sex" ng-model="sex" value="mail">남
<input type="radio" name="sex" ng-model="sex" value="femail">여
<!-- <hr> -->

<input type="submit" value="로그인" class="btn"/>
<input type="reset" value="cancel" class="btn"/>

</form>

<h1>{{sex}}</h1>
<a href="#/signup" class="btn btn-primary">회원가입</a>

</div>

<div style="border: 1px solid red;" class="container">
	<h1>Container Test</h1>

</div>






