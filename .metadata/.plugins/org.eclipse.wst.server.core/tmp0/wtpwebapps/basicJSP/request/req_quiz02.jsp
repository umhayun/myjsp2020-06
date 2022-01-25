<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- a태그 누르면 학생번호뜨게 -->

<h1>req_quiz02.jsp</h1>
<p>다음을 구현하고 a태그 클릭시 req_quiz02_ok.jsp 학생번호를 클릭하세요<br>
<% for(int i=1;i<=30;i++){%>
<a href="req_quiz02_ok.jsp?num=<%=i %>"><%=i %>번 학생</a><br> <!-- get방식으로 name선언대신 -->
<%} %>

</body>
</html>