<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
if (session.getAttribute("user") == null)
	response.sendRedirect((String)request.getContextPath() + "/home");
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainpage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminPage.css">
    <script src="https://cdn.tiny.cloud/1/3vika85zxcmchpk9yiu3jx3gifn74h88judn089ndmpve4s8/tinymce/5/tinymce.min.js"
        referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: '#newBlogContent, #newSubcontent',
            plugins: 'media table'
        });
    </script>
</head>

<body>
     <%@include file="navBar.jsp" %>  
    
    <div class="container">
        <div class="addNewBlog">
            <h1>Add new blog</h1>
            <form action="${pageContext.request.contextPath}/process/admin/post_article/postProcess.jsp" method="POST">
                <label for="newBlogTitle">Your title:</label>
                <input name="newBlogTitle" class="inputBlogTitle" type="text" placeholder="Add your title" required>
                <br>
                <label for="newBlogContent">Your content:</label>
                <textarea id="newBlogContent" name="newBlogContent" class="blogContent" type="text" required>
                </textarea>
                <br>
                <label for="newSubcontent">Your subcontent:</label>
                <textarea id="newSubcontent" name="newSubcontent" class="subcontent" type="text" placeholder="Subcontent" required>
                </textarea>
                <br>
                <label for="newBlogAuthor">Author:</label>
                <input name="author" class="author" type="text" placeholder="Author" required>
                <br>
                <label for="newBlogSourceImg">Source image:</label>
                <input name="sourceImg" class="sourceImg" type="text" placeholder="Source image" required>
                <br>
                <label for="newBlogSource">Source:</label>
                <input name="source" class="source" type="text" placeholder="Source">
                <br>
                <label for="newBlogNote">Note:</label>
                <input name="note" class="note" type="text" placeholder="Note">
                <br>
                <input type="submit" class="btn SubmitButton">
            </form>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>
</body>

</html>