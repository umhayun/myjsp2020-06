<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/_header.jsp" %>
<style>
.bt{
	width:100px;
	height:50px;
}
</style>
<section>
	<div align="center">
	<h3>비밀번호 변경 페이지</h3>
	<hr>
		<form action="user_change_pw_ok.jsp" method="post">
		현재 비밀번호 : <input type="password" name="old_pw"><br>
		<br>
		변경 비밀번호 : <input type="password" name="new_pw"><br>
		<br>
		<input class="bt" type="submit" value="확인"> &nbsp;&nbsp;
		<input class="bt" type="button" value="취소" onclick="history.go(-1)">
		</form>
	<hr>
	</div>
</section>
<%@include file="../include/_footer.jsp" %>