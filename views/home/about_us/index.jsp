<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%

%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>How we create this website</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainpage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aboutus.css">
</head>

<body>
    <%@include file="../navBar.jsp" %>
    <h1>Our Team</h1>
    <div class="memberCardBox">
        <%@include file="memberCard.jsp" %>
    </div>
    <!-- Footer -->
    <%@include file="../footer.jsp" %>
    <!--Login portal-->
    <%@include file="../login/index.jsp" %>
    <script src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>
</body>

</html>