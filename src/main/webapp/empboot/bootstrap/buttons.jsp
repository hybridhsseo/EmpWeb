<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- buttons.jsp -->
<style type="text/css">
	#carousel div {
/* 		border: 1px solid red; */
	}
</style>

<div id="buttons" class="container">
<h1>buttons example</h1>
<h4>Single toggle</h4>
    <pre>{{singleModel}}</pre>
    <button type="button" class="btn btn-primary" ng-model="singleModel" btn-checkbox btn-checkbox-true="1" btn-checkbox-false="0">
        Single Toggle
    </button>
    <h4>Checkbox</h4>
    <pre>{{checkModel}}</pre>
    <div class="btn-group">
        <label class="btn btn-primary" ng-model="checkModel.left" btn-checkbox>Left</label>
        <label class="btn btn-primary" ng-model="checkModel.middle" btn-checkbox>Middle</label>
        <label class="btn btn-primary" ng-model="checkModel.right" btn-checkbox>Right</label>
    </div>
    <h4>Radio &amp; Uncheckable Radio</h4>
    <pre>{{radioModel || 'null'}}</pre>
    <div class="btn-group">
        <label class="btn btn-primary" ng-model="radioModel" btn-radio="'Left'">Left</label>
        <label class="btn btn-primary" ng-model="radioModel" btn-radio="'Middle'">Middle</label>
        <label class="btn btn-primary" ng-model="radioModel" btn-radio="'Right'">Right</label>
    </div>
    <div class="btn-group">
        <label class="btn btn-success" ng-model="radioModel" btn-radio="'Left'" uncheckable>Left</label>
        <label class="btn btn-success" ng-model="radioModel" btn-radio="'Middle'" uncheckable>Middle</label>
        <label class="btn btn-success" ng-model="radioModel" btn-radio="'Right'" uncheckable>Right</label>
    </div>

</div>
<script type="text/javascript">
// 	$('#grid #result').html("Grid loading...");
</script>
