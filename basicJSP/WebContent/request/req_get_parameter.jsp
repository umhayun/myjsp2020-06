<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String pw=request.getParameter("pw");
String name=request.getParameter("name");
String addr=request.getParameter("address");
//checkbox는 get.ParameterValues 메서드를 사용하여 처리.

String[] favorite=request.getParameterValues("intro");
String major=request.getParameter("major");
String phone=request.getParameter("phone");
String fav="";

   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디: <%=id %><br>
비밀번호: <%=pw %><br>
이름: <%=name %><br>
주소: <%=addr %><br>
관심분야: <%=Arrays.toString(favorite) %><br> <!-- 배열 전체 처리 -->
전공: <%=major %><br>
통신사: <%=phone %><br>
</body>
</html>