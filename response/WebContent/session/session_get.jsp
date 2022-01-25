<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	/*
	세션에 저장된 값은 같은 브라우저가 종료되기까지, 또는 기본시간 30분까지 어느 페이지에서도 
	사용이 가능하다.
	getAttribut("세션이름")메서드사용
	*/
	String id=(String)session.getAttribute("id");
	String name=(String)session.getAttribute("name");
	//세션 유지시간 확인
	int time=session.getMaxInactiveInterval();
	//세션 유지시간 변경
	session.setMaxInactiveInterval(3600);
	int time2=session.getMaxInactiveInterval();
	//모든 세션 삭제
	session.invalidate();
	//getid()
	String _session=session.getId();
	//getAttributeNames()
	ArrayList<String> list=(ArrayList<String>)session.getAttributeNames();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	아이디: <%=id %><br>
	이름:	  <%=name %><br>
	유지시간: <%=time %><br>
	유지시간 변경후: <%=time2 %><br>
	세션ID: <%=session %><br>
	
</body>
</html>