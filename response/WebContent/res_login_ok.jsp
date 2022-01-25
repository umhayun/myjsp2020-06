<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 1번 페이지에서 넘어온 id,pw값을 받아서 처리
id가 abc123이고, 비밀번호 asd123이면, 로그인성공,
login_welcome페이지로 리다이렉트
id가 틀린경우 login_id_fail페이지로 리다이렉트 
pw가 틀린 경우 login_pw_fail페이지로 리다이렉트
-->

<%
String id="abc123";
String pw="asd123";

String uid=request.getParameter("id");
String upw=request.getParameter("pw");

if(uid.equals(id)&&upw.equals(pw)){
	response.sendRedirect("login_welcome.jsp");
}
else if(!uid.equals(id)){
	response.sendRedirect("login_id_fail.jsp");
}
else if(!upw.equals(pw)){
	response.sendRedirect("login_pw_fail.jsp");
}

%>