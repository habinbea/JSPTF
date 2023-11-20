<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.TFDAO"%>
<%@ page import="com.example.dao.TFDAO" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.bean.TFVO" />
<jsp:setProperty property="*" name="u"/>

<%
	TFDAO TFDAO = new TFDAO();
	int i= TFDAO.updateBoard(u);
	response.sendRedirect("posts.jsp");
%>