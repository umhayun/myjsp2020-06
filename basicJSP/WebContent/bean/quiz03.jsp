<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.bean.User" %>
<h2>자바코드 작성</h2>
<%--  <%
	User user=(User)request.getAttribute("user");
%>
<%=user.getId() %>(<%=user.getName() %>)님 회원가입을 축하합니다.<br>
비밀번호는 <%=user.getPw() %> 
 --%>
<h2>액션태그 작성</h2>
<jsp:useBean id="u2" class="com.bean.User" scope="request"/>
<jsp:getProperty property="id" name="u2"/>(<jsp:getProperty property="name" name="u2"/>)님 회원가입을 축하합니다.<br>
비밀번호는 <jsp:getProperty property="pw" name="u2"/>입니다.


<h2>액션태그</h2>
</body>
</html>