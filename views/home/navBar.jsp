<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String strLog = "Log in";
String hrefLog = "#";
String click = "onOFFLogin()";
if (session.getAttribute("user") != null) {
	strLog = "Log out";
	hrefLog = (String) request.getContextPath() + "/logout";
	click = "";
}
%>

<nav class="navBar" id="navBar">
	<a href="${pageContext.request.contextPath}/home" class="logo">How we create this website</a>
	<ul class="right-navBav" id="right-navBav">
		<li><a href="${pageContext.request.contextPath}/home/video">Video</a></li>
		<li><a href="${pageContext.request.contextPath}/home/about_us">About us</a></li>
		<li onclick="<%out.print(click);%>" ><a href="<%out.print(hrefLog);%>"><% out.print(strLog); %></a></li>
		<li><a href="${pageContext.request.contextPath}/home/contact_us">Contact us</a></li>
	</ul>
	<a href="#" onclick="DropDown()" class="dropDown" id="dropDown">&#9776;</a>
</nav>
<div class="navBarPlaceHolder" id="navBarPlaceHolder"></div>