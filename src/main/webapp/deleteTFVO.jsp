<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.TFDAO, com.example.bean.TFVO"%>
<%@ page import="com.example.common.FileUpload" %>
<%
	String sid = request.getParameter("id");
	System.out.println(sid);
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		TFDAO tfdao = new TFDAO();
		String filename = tfdao.getPhotoFilename(id);
		if (filename != null)
			FileUpload.deleteFile(request, filename);
		TFVO tf = new TFVO();
		tf.setTfid(id);
		tfdao.deleteTF(tf);
	}
	response.sendRedirect("index.jsp");
%>