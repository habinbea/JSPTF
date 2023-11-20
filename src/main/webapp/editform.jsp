<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.TFDAO, com.example.bean.TFVO"%>
<%@ page import="com.example.dao.TFDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	TFDAO TFDAO = new TFDAO();
	String id=request.getParameter("id");	
	TFVO u= TFDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
<tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
<tr><td>Writer:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>