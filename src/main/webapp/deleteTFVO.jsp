<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.TFDAO, com.example.bean.TFVO"%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		TFVO tf = new TFVO();
		tf.setTfid(id);
		TFDAO tfdao = new TFDAO();
		tfdao.deleteTF(tf);
	}
	response.sendRedirect("index.jsp");
%>