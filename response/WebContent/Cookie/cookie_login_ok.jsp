<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
/*
1.아이디와 비밀번호 받아냄.
2.id=abc이고, pw=1234라면 로그인 성공이라 간주, (user_id,id)값을 가지는 Cookie생성
3.쿠키 문법 사용 쿠키 전송 cookie_welcome.jsp로 이동
(cookie_welcome.jsp파일은 로그인 성공한 "xxx님 환영합니다."가 출력되게 하세요)
4. 아이디와 비밀번호가 틀렸다면, cookie_login.jsp로 이동.
*/
String uid=request.getParameter("id");
String upw=request.getParameter("pw");
String idcheck=request.getParameter("idcheck");
if(uid.equals("abc")&&upw.equals("1234")){
	Cookie id=new Cookie("user_id",uid);
	id.setMaxAge(30);
	response.addCookie(id);
	
	if(idcheck!=null){
		Cookie check=new Cookie("idcheck",uid);
		check.setMaxAge(1800); //30분
		response.addCookie(check);
	}
	
	
	response.sendRedirect("cookie_welcome.jsp");
	
}
else{
	response.sendRedirect("cookie_login.jsp");
}
%>
