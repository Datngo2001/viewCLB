<%@page import="com.clubwebsite.NewObject.Article"%>
<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.clubwebsite.process.home.loadListProcess" %>

<%

Integer pageNum = null;
if (request.getParameter("page") == null)
	pageNum = 1;
else 
	pageNum = Integer.parseInt(request.getParameter("page"));

int numArticlesPerPage = (int) request.getAttribute("numArticlesPerPage");
ArrayList<Article> listArticles = loadListProcess.GetListArticles(pageNum, numArticlesPerPage);
int pageLast = (listArticles.size()/numArticlesPerPage)+1;
int endI;

//#############################################################
if (pageNum * numArticlesPerPage > listArticles.size())
	endI = listArticles.size();
else
	endI = pageNum * numArticlesPerPage;

for (int i = (pageNum - 1) * numArticlesPerPage; i < endI; i++) {
	int id = listArticles.get(i).getId();
	String title = listArticles.get(i).getTitle();
	String subcontent = listArticles.get(i).getSubcontent();
	String date = listArticles.get(i).getDate();
	%>
	<article class="postEntry" id="">
		<div class="entryThumbmail">
			<img src="<%out.print(listArticles.get(i).getSourceImg()); %>" alt="">
		</div>
		<div class="entryContent">
			<h1 class="entryHeader">
				<a href="${pageContext.request.contextPath}/getArticle?id=<% out.print(id); %>"><% out.print(title); %></a>
			</h1>
			<div class="entryExcerpt"><% out.print(subcontent);%></div>
			<a class="readMoreLink" href="${pageContext.request.contextPath}/getArticle?id=<% out.print(id); %>">Read more</a>
		</div>
		<hr align="center" />
	</article>
	<%
}

%>

