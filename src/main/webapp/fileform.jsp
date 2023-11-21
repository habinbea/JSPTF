<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.dao.TFDAO, com.example.bean.TFVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>fileform</title>
</head>
<body>
    <form method="post" action="fileupload.jsp" enctype="multipart/form-data">
        <input type="file" name="photo">
        <input type="submit" value="upload">
    </form>
</body>
</html>
