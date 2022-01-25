<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="error_view.jsp" %><!-- 에러발생시 보여질 페이지 지정 -->


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.getParameter("num").charAt(0);
%>
</body>
</html>