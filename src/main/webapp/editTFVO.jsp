<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.TFDAO"%>
<%@ page import="com.example.dao.TFDAO" %>
<%@ page import="com.example.common.FileUpload" %>
<%@ page import="com.example.bean.TFVO" %>

<%--<jsp:useBean id="tf" class="com.example.bean.TFVO" />--%>
<%--<jsp:setProperty property="*" name="tf"/>--%>

<%
	request.setCharacterEncoding("utf-8");
	TFDAO tfdao = new TFDAO();
	FileUpload upload = new FileUpload();
	TFVO tf = upload.uploadPhoto(request);
	request.setAttribute("tf", tf);

	int i= tfdao.updateTF(tf);
	String msg = "Successfully edited a TF";
	if(i == 0) msg = "Required: TF name and TF full name";
%>

<script>
	alert('<%=msg%>');
	location.href="view.jsp?id=${tf.tfid}";
</script>