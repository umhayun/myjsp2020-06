<%@page import="java.sql.Timestamp"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@page import="com.myweb.user.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/_header.jsp" %>

<body>
<section>
<div align="center">
<h2>마이페이지</h2>
<%
if(session.getAttribute("user_id")==null){
	response.sendRedirect("user_login.jsp");
}
String id=(String)session.getAttribute("user_id");
String name=(String)session.getAttribute("user_name");
UserDAO dao=UserDAO.getInstance();
UserVO vo=new UserVO(); 
vo=dao.getUserInfo(id);
String pw=vo.getPw();

String email=vo.getEmail();
String address=vo.getAddress();
Timestamp tp=vo.getRegdate();
%>
<hr>

<%=id %>(<%=name %>)님의 회원정보 관리합니다.
<hr>
<input type="button" value="비밀번호 변경" style="background-color:#EAEAEA" onclick="location.href='user_change_pw.jsp'">
<input type="button" value="회원정보 변경" style="background-color:#BDBDBD" onclick="location.href='user_update.jsp'">
<input type="button" value="회원탈퇴" style="background-color:#A6A6A6" onclick="location.href='user_delete_check.jsp'">
</div>
</section>
<%@include file="../include/_footer.jsp" %>