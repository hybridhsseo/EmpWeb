<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- searchkeyword.jsp -->
<html>
<h1>Searchkeyword</h1>
<hr>
<!-- {{areacode | convertAreacode:this}} -->
<hr>
<input type="text" data-ng-model="keyword"></input>
<button data-ng-click="search()">조회</button>

<div>
{{keyword}}
</div>
numOfRows = {{response.body.numOfRows}}<br>
pageNo = {{response.body.pageNo}}<br>
totalCount = {{response.body.totalCount}}<br>
<div>
<pagination ng-change="changePage()" total-items="response.body.totalCount" ng-model="currentPage" max-size="10" class="pagination-sm" boundary-links="true" rotate="false"></pagination>
<hr>
<ul>
	<li data-ng-repeat="item in response.body.items.item">
<!-- 	{{item.firstimage}} -->
	<h3>{{item.title}}</h3>
	<img alt="xxx" src="{{item.firstimage}}" style="width: 100px; height: 100px;"/>
	</li>

</ul>


<hr>
{{response}}
</div>

</html>



