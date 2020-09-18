<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.clubwebsite.process.home.getArticle" %>
<%@page import="com.clubwebsite.process.home.increaseView" %>
<%@page import="com.clubwebsite.NewObject.Article"  %>

<%
int id = Integer.parseInt(request.getParameter("id"));
Article resArt = getArticle.get(id);
increaseView.increase(id);
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%out.print(resArt.getTitle()); %></title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainpage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/post1.css">
</head>

<body>
    <%@include file="../../../WEB-INF/views/home/navBar.jsp" %>
    <section class="body">
        <div class="leftBody"></div>
        <div class="rightBody"></div>
        <div class="mainBody post-wrapper">
            <article class="post" id="">
                <div class="postThumbnail-wrapper"><img class="postThumbnail"
                        src="<%out.print(resArt.getSourceImg()); %>" alt=""></div>
                <div class="postContent">
                    <h1 class="blogHeader"><%out.print(resArt.getTitle()); %></h1>
                    <span class="blogUploadDay"><%out.print(resArt.getDate()); %></span><br>
                    <div class="blogContent"><%
                    	out.print(resArt.getContent()); 
                    %></div>
            	<span class="blogAuthor"><%out.print(resArt.getAuthor()); %></span><br>
            	<span class="blogSource">Source: <%out.print(resArt.getSource()); %></span><br>
            	<span class="blogViews">Views: <%out.print(resArt.getViews()); %></span> 
                </div>
            </article>
            
        </div>
    </section>
    <section class="footer">
        <div class="container">
            <div class="footerContent">

            </div>
        </div>
    </section>
    <!--Login portal-->
    <%@include file="../../../WEB-INF/views/home/login/index.jsp" %>
    <script src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>
</body>

</html>