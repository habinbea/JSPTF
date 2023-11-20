<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.TFDAO, com.example.bean.TFVO"%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		TFVO u = new TFVO();
		u.setTFID(id);
		TFDAO TFDAO = new TFDAO();
		TFDAO.deleteTF(u);
	}
	response.sendRedirect("posts.jsp");
%>