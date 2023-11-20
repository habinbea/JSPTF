<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.TFDAO"%>
<%@ page import="com.example.dao.TFDAO" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="tf" class="com.example.bean.TFVO" />
<jsp:setProperty property="*" name="tf"/>

<%
	TFDAO tfdao = new TFDAO();
	int i= tfdao.updateTF(tf);
	response.sendRedirect("index.jsp");
%>