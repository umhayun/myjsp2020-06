<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
/*
	페이지를 접속할 때마다 랜덤으로 생성된 숫자값을 출력(메소드 사용)
	오늘의 숫자 : 랜덤숫자
	2.페이지 누적 요청 숫자 계산 출력
	페이지 누적 요청:수 (int)
	3.요청한 페이지 개별 요청 숫자를 표시 
	페이지 개별요청 : 개별요청수(int)
*/
int total=0;

public int rannum(){
	Random ran=new Random();
	int num=ran.nextInt(10);
	return num;
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
<%
int each=0;
total++;
each++;
int n=rannum();
%>
<br>
페이지 누적요청 : <%=total %><br>
페이지 개별요청 : <%=each %><br>
오늘의 숫자 : <%=n %>

</body>
</html>













