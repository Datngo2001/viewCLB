<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our videos</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainpage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/videos.css">
</head>

<body>
    <%@include file="../navBar.jsp" %>
    <section class="body">
        <div class="leftBody"></div>
        <div class="rightBody"></div>
        <div class="mainBody">
            <div class="videoEntry" id="">
                <div class="video">
                    <iframe src="" frameborder="0"></iframe>
                </div>
                <div class="entryDescription">
                    <h1 class="Header">Post 1</h1>
                    <div class="Content">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                </div>
            </div>
        </div>
    <!-- Footer -->
    <%@include file="../footer.jsp" %>
    <!--Login portal-->
    <%@include file="../login/index.jsp" %>
    <script src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/videos.js"></script>
</body>

</html>