<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- pagenation.jsp -->
<style type="text/css">
	#accordion div {
/* 		border: 1px solid red; */
	}
</style>

<div id="accordion" class="container">
<h1>Accordion example</h1>
  <accordion close-others="oneAtATime">
    <accordion-group heading="Static Header, initially expanded" is-open="status.isFirstOpen" is-disabled="status.isFirstDisabled">
      This content is straight in the template.
    </accordion-group>
    <accordion-group heading="{{group.title}}" ng-repeat="group in groups">
      {{group.content}}
    </accordion-group>
    <accordion-group heading="Dynamic Body Content">
      <p>The body of the accordion group grows to fit the contents</p>
        <button class="btn btn-default btn-sm" ng-click="addItem()">Add Item</button>
        <div ng-repeat="item in items">{{item}}</div>
    </accordion-group>
    <accordion-group is-open="status.open">
        <accordion-heading>
            I can have markup, too! <i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': status.open, 'glyphicon-chevron-right': !status.open}"></i>
        </accordion-heading>
        This is just some content to illustrate fancy headings.
    </accordion-group>
  </accordion>
</div>
<script type="text/javascript">
// 	$('#grid #result').html("Grid loading...");
</script>
