<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
if (session.getAttribute("user") == null)
	response.sendRedirect((String)request.getContextPath() + "/home");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminPage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainpage.css">
</head>

<body>
    <%@include file="navBar.jsp" %>
    <!--Dashboard-->
    <div class="container">
        <h1>Dash board</h1>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>
</body>