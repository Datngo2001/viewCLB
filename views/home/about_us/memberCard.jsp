<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.clubwebsite.NewObject.MemberCard"%>
<%@page import="java.util.*"%>
<%@page import="com.clubwebsite.process.home.getInfMember"%>

<%
ArrayList<MemberCard> listMem = getInfMember.getInf();
for (int i=0; i<listMem.size(); i++) {
	out.print("<div class=\"memberCard\">" +
			"            <div class=\"coverImage\">" +
			"                <img src=\""+ (String)request.getContextPath() +"/resources/images/ngominhdatCoveImage.jpg\" alt=\"cover iImage\">" +
			"            </div>" +
			"            <div class=\"profile\">" +
			"                <div class=\"avatarWrapper\">" +
			"                    <div class=\"avatar\">" +
			"                        <img src=\""+ listMem.get(i).getSourceImg() +"\" alt=\"avatar\">" +
			"                    </div>" +
			"                </div>" +
			"                <div class=\"description\">" +
			"                    <h4 class=\"name\">"+ listMem.get(i).getName() +"</h4>" +
			"                    <span>Email: <br>"+ listMem.get(i).getEmail() +"</span><br>" +
			"                    <span>Phone: "+ listMem.get(i).getPhone() +"</span><br>" +
			"                </div>" +
			"            </div>" +
			"            <div class=\"index\">" +
			"                <div class=\"index1\">" +
			"                    <span class=\"number\">100</span>" +
			"                    <span>index1</span>" +
			"                </div>" +
			"                <div class=\"index2\">" +
			"                    <span class=\"number\">100</span>" +
			"                    <span>index2</span>" +
			"                </div>" +
			"                <div class=\"index3\">" +
			"                    <span class=\"number\">100</span>" +
			"                    <span>index3</span>" +
			"                </div>" +
			"            </div>" +
			"        </div>");
}
%>