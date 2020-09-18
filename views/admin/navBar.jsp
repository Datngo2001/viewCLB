<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navBar" id="navBar">
	<a href="${pageContext.request.contextPath}/admin" class="logo">Admin panel</a>
	<ul class="right-navBav" id="right-navBav">
		<li><a href="${pageContext.request.contextPath}/admin">Dashboard</a></li>
		<hr width="1" size="30">
		<li><a href="${pageContext.request.contextPath}/home">Home</a></li>
		<hr width="1" size="30">
		<li><a href="${pageContext.request.contextPath}/admin/post">Post</a></li>
		<hr width="1" size="30">
		<li><a href="${pageContext.request.contextPath}/admin/findBlog">Find blog</a></li>
		<hr width="1" size="30">
		<li><a href="${pageContext.request.contextPath}/admin/modifyOrDelete">Modify or delete</a></li>
		<hr width="1" size="30">
		<li><a href="${pageContext.request.contextPath}/logout">Log out</a></li>
	</ul>
	<a href="#" onclick="DropDown()" class="dropDown" id="dropDown">&#9776;</a>
</nav>
<div class="navBarPlaceHolder" id="navBarPlaceHolder"></div>