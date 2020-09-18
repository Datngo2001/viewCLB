<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="loginPortal-container" id="loginPortal-container">
	<div class="loginPortal animateZoom">
		<button class="close" onclick="onOFFLogin()">&times;</button>
		<form class="loginForm"
			action="${pageContext.request.contextPath}/process/home/login/loginProcess.jsp">
			<label for="MemberName">Member name</label> <input type="text"
				placeholder="Enter Member name" name="MemberName" required>
			<label for="password">Password</label> <input type="password"
				placeholder="Enter Password" name="password" required>
			<button class="btn loginButton" type="submit">Login</button>
		</form>
	</div>
</div>