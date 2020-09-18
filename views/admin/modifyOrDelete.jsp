<%@page import="com.clubwebsite.NewObject.Article"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
if (session.getAttribute("user") == null)
	response.sendRedirect((String) request.getContextPath() + "/home");

Article blogRes = null;
if (session.getAttribute("blogRes") != null) {
	blogRes = (Article) session.getAttribute("blogRes");
	session.setAttribute("blogRes", null);
}
session.setAttribute("pageRequest", "/modifyOrDelete.jsp");
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Modify or delete</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mainpage.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/adminPage.css">
<script
	src="https://cdn.tiny.cloud/1/3vika85zxcmchpk9yiu3jx3gifn74h88judn089ndmpve4s8/tinymce/5/tinymce.min.js"
	referrerpolicy="origin"></script>
<script>
	tinymce.init({
		selector : '#BlogContent, #Subcontent',
		plugins : 'media table'
	});
</script>

</head>

<body>
	<%@include file="navBar.jsp"%>

	<div class="container">
		<h1>Find and Modify</h1>
		<div class="findById">
			<form action="${pageContext.request.contextPath}/process/admin/find_article/findProcess.jsp" method="POST" target="">
				<label for="IdToFind">Blog ID: </label> 
				<input class="inputBlogId" type="text" name="IDtoFind"
					value="<%
					if (blogRes != null)
						out.print(blogRes.getId());%>" 
					id="">
				<input class="btn findButton" type="submit" value="Find">
			</form>
		</div>
		<br>
		<div class="Modify">
			<h1>Modify</h1>
			<form action="${pageContext.request.contextPath}/process/admin/modify_article/modifyProcess.jsp" method="POST">
				<input name="BlogId" class="inputBlogId" type="hidden"
					value="<%
					if (blogRes != null)
						out.print(blogRes.getId());%>">
				<label for="BlogTitle">Title:</label> 
				<input name="BlogTitle" class="inputBlogTitle" type="text"
					value="<%
					if (blogRes != null)
						out.print(blogRes.getTitle());%>">
				<br> 
				<label for="BlogContent">Content:</label>
				<textarea id="BlogContent" name="BlogContent" class="blogContent"
					type="text"><%
					if (blogRes != null)
						out.print(blogRes.getContent());
				%></textarea>
				<br> 
				<label for="Subcontent">Subcontent:</label>
				<textarea id="Subcontent" name="Subcontent" class="subcontent"
					type="text" placeholder="Subcontent"><%
					if (blogRes != null)
						out.print(blogRes.getSubcontent());
				%></textarea>
				<br> 
				<label for="BlogAuthor">Author:</label> 
				<input name="author" class="author" type="text"	
					value="<%
					if (blogRes != null)
						out.print(blogRes.getAuthor());%>"> 
				<br> 
				<label for="BlogSource">Source:</label> 
				<input name="source" class="source" type="text" 
				value="<%
					if (blogRes != null)
						out.print(blogRes.getSource());%>"> 
				<br>
				<label for="BlogSource">Source Image:</label> 
				<input name="sourceImg" class="sourceImg" type="text" 
				value="<%
					if (blogRes != null)
						out.print(blogRes.getSourceImg());%>"> 
				<br>
				<label for="BlogNote">Note:</label> 
				<input name="note" class="note" type="text" 
				value="<%
					if (blogRes != null)
						out.print(blogRes.getNote());%>"> 
				<br>
				<input type="submit" class="btn SubmitButton" value="Save Change">
			</form>
		</div>
		<hr>
		<h1>Delete</h1>
		<div class="deleteById">
			<form id="deleteBlog" action="${pageContext.request.contextPath}/process/admin/delete_article/deleteProcess.jsp" method="POST">
				<label for="IdToDelete">Blog ID: </label> 
				<input class="inputBlogId" type="text" name="IdToDelete" id=""> 
				<input class="btn deleteButton" onclick="onOffDeleteConfig()" type="button" value="Delete">
			</form>
			<div class="deleteConfig animateZoom" onfocus="followTheScreen()"
				tabindex="0" id="deleteConfig">
				<h2>Are you sure to delete?</h2>
				<hr>
				<button class="close" onclick="onOffDeleteConfig()">&times;</button>
				<div class="deleteOrCancel">
					<button class="btn deleteButton" form="deleteBlog" type="submit">Delete</button>
					<button class="btn CancelButton" onclick="onOffDeleteConfig()">Cancel</button>
				</div>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/adminPage.js"></script>
	</script>
</body>

</html>