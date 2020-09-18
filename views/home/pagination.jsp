<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
String stylePre = "";
String styleNext = "";
String stylePagi1 = "";
String stylePagi2 = "";
String stylePagi3 = "";

String strShowPagi1 = "";
String strShowPagi2 = "";
String strShowPagi3 = "";
if (pageLast != 1) {
	if (pageNum == 1)
	{
		stylePre = "display:none;";
		strShowPagi1 = "<strong>1</strong>";
		strShowPagi2 = Integer.toString(pageNum+1);
		strShowPagi3 = Integer.toString(pageNum+2);
	}
	if (pageNum.equals(pageLast))
	{
		styleNext = "display:none;";
		strShowPagi3 = "<strong>"+ pageNum +"</strong>";
		strShowPagi2 = Integer.toString(pageNum-1);
		strShowPagi1 = Integer.toString(pageNum-2);
	}

	if (pageNum != 1 && !pageNum.equals(pageLast)) {
		strShowPagi1 = Integer.toString(pageNum-1);
		strShowPagi2 = "<strong>"+ pageNum +"</strong>";
		strShowPagi3 = Integer.toString(pageNum+1);
	}
}
else {
	stylePre = "display:none;";
	styleNext = "display:none;";
	stylePagi1 = "display:none;";
	stylePagi3 = "display:none;";
	strShowPagi2 = "<strong>1</strong>";
}



%>

<ul class="pagination">
	<li class="page-item" style="<% out.print(stylePre); %>">
		<a class="page-link" 
		href="${pageContext.request.contextPath}/home?page=<% out.print(pageNum-1); %>">&laquo;</a>
	</li>
	<li class="page-item" style="<% out.print(stylePagi1); %>">
		<a class="page-link" 
		href="${pageContext.request.contextPath}/home?page=<% out.print(pageNum-1); %>"><% out.print(strShowPagi1); %></a>
	</li>
	<li class="page-item" style="<% out.print(stylePagi2); %>">
		<a class="page-link" 
		href="${pageContext.request.contextPath}/home?page=<% out.print(pageNum); %>"><% out.print(strShowPagi2); %></a>
	</li>
	<li class="page-item" style="<% out.print(stylePagi3); %>">
		<a class="page-link" 
		href="${pageContext.request.contextPath}/home?page=<% out.print(pageNum+1); %>"><% out.print(strShowPagi3); %></a>
	</li>
	<li class="page-item" style="<% out.print(styleNext); %>">
		<a class="page-link" 
		href="${pageContext.request.contextPath}/home?page=<% out.print(pageNum+1); %>">&raquo;</a>
	</li> 
</ul>