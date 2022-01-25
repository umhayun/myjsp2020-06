<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- a태그를 이용하여 경로 이동 -->
	<!-- req_video페이지로 상대경로로 이동설정 -->
	<a href="../../request/req_video.jsp">req_video페이지로 상대경로 이동설정</a><br>
	<!-- req_video페이지로 절대경로 이동 설정 -->
	<a href="/basicJSP/request/req_video.jsp">req_video페이지로 절대경로 이동 설정</a><br>
	<!-- TestServlet으로 상대경로 이동 -->
	<a href="../../apple">TestServlet으로 상대경로 이동</a><br>
	<!-- TestServlet으로 절대경로 이동 -->
	<a href="/basicJSP/apple">TestServlet으로 절대경로 이동</a><br>
	<!-- request에 img폴더에 있는 고양이이미지를 참조(img태그 사용 width=100) -->
	<img src="../../request/img/cat.jpg" width="500">
	
</body>
</html>