<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
//쿠키 생성 방법
// 1. 쿠키 객체 생성- 생성자 매개변수로(쿠키이름, 쿠키값)
Cookie idCoo=new Cookie("user_id","kkk123");
Cookie nameCoo=new Cookie("user_name","홍길동");

//2.쿠키 시간설정
idCoo.setMaxAge(3600);//1시간 설정
nameCoo.setMaxAge(30); //30초 설정

//3.응답바구니(response)에 쿠키 탑재
response.addCookie(idCoo);
response.addCookie(nameCoo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<a href="cookie_get.jsp">쿠키확인</a>
</body>
</html>