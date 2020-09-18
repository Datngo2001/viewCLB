<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.clubwebsite.NewObject.Article"  %>

<%
if (session.getAttribute("user") == null)
	response.sendRedirect((String)request.getContextPath() + "/home");

Article blogRes = null;
ArrayList<String> listBlogRes = null;
String titleSearch = null;

if (session.getAttribute("blogRes") != null) {
	blogRes = (Article)session.getAttribute("blogRes");
	session.setAttribute("blogRes", null);
}
else if (session.getAttribute("listBlogRes") != null) {
	listBlogRes = (ArrayList<String>)session.getAttribute("listBlogRes");
	titleSearch = (String)session.getAttribute("titleSearch");
	session.setAttribute("listBlogRes", null);
	session.setAttribute("titleSearch", null);
}
session.setAttribute("pageRequest", "/findBlog.jsp");
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find blog</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainpage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminPage.css">
    <script src="https://cdn.tiny.cloud/1/3vika85zxcmchpk9yiu3jx3gifn74h88judn089ndmpve4s8/tinymce/5/tinymce.min.js"
        referrerpolicy="origin"></script>
    <script>
    tinymce.init({
        selector: '#BlogContent, #Subcontent',
        plugins: 'media table'
    });
    </script>
</head>

<body>
    <%@include file="navBar.jsp" %>  
    
    <div class="container"> 
        <h1>Find a blog</h1>
        <div class="findById">
            <form action="${pageContext.request.contextPath}/process/admin/find_article/findProcess.jsp" method="POST">
                <label for="IDtoFind">Blog ID: </label><br>
                <input class="inputBlogId" type="text" name="IDtoFind" id="" required><br>
                <input class="btn findButton" type="submit" value="Find">
            </form>
        </div>
        <br>
        <div class="findByTitle">
            <form action="${pageContext.request.contextPath}/process/admin/find_article/findProcess.jsp" method="POST">
                <label for="TitleToFind">Blog Title: </label><br>
                <input class="inputBlogTitle" type="text" name="TitleToFind" id="" required><br>
                <input class="btn findButton" type="submit" value="Find">
            </form>
        </div>
        <br>
        <div class="findResult">
            <h1>Result</h1>
            <form>
            	<label for="BlogID">ID:</label>
                <input name="BlogID" class="inputBlogID" type="text" 
                value="<%
                if (blogRes != null)
                	out.print(blogRes.getId());
                %>"
                readonly>
                <br>
                <label for="BlogTitle">Title:</label>
                <input name="BlogTitle" class="inputBlogTitle" type="text" 
                value="<%
                if (blogRes != null)
                	out.print(blogRes.getTitle());
                else if (listBlogRes != null)
                	out.print(titleSearch);
                %>"
                readonly>
                <br>
                <label for="BlogContent">Content:</label>
                <textarea id="BlogContent" name="BlogContent" class="blogContent" type="text" readonly><%
                if (blogRes != null)
                	out.print(blogRes.getContent());
                else if (listBlogRes != null) {
                	for (int i=0; i<listBlogRes.size(); i++) {
                		out.print(listBlogRes.get(i) + "<br>");
                	}
                }
                %></textarea>
                <br>
                <label for="Subcontent">Subcontent:</label>
                <textarea id="Subcontent" name="Subcontent" class="subcontent" type="text" readonly><%
                if (blogRes != null)
                	out.print(blogRes.getSubcontent());
                %></textarea>
                <br>
                <label for="author">Author:</label>
                <input name="author" class="author" type="text" 
                value="<%
                if (blogRes != null)
                	out.print(blogRes.getAuthor());
                %>"
                readonly>
                <br>
                <label for="source">Source:</label>
                <input name="source" class="source" type="text" 
                value="<%
                if (blogRes != null)
                	out.print(blogRes.getSource());
                %>"
                readonly>
                <br>
                <label for="note">Note:</label>
                <input name="note" class="note" type="text" 
                value="<%
                if (blogRes != null)
                	out.print(blogRes.getNote());
                %>"
                readonly>
                
            </form>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>
</body>

</html>