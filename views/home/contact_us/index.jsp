<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>How we create this website</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainpage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/contactUs.css">
</head>

<body>
    <%@include file="../navBar.jsp" %>
    <section class="body">
        <div class="leftBody"></div>
        <div class="rightBody"></div>
        <div class="mainBody">
            <h1>Contact us</h1>
            <form class="contactForm" name="contactForm" action="${pageContext.request.contextPath}/process/home/contact_us/contactUsProcess.jsp" method="POST">
                <input name="userRealName" placeholder="Your name" type="text">
                <hr>
                <input name="userEmail" placeholder="Your email" type="text">
                <hr>
                <input name="userPhone" placeholder="Your phone number" type="text">
                <hr>
                <textarea name="userMessage" placeholder="Your Message" type="text" rows="5"></textarea>
                <hr>
                <input class="btn" type="submit" value="Send">
            </form>
        </div>
    <!-- Footer -->
    <%@include file="footer.jsp" %>
    <!--Login portal-->
    <%@include file="../login/index.jsp" %>
    <script src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>
</body>

</html>