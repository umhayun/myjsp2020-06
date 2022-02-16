<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/_header.jsp"%>
<style>
td{
	font-size:20px;
	width : 200px;
}
tr{
	text-align :center;
	height: 43px;
	
}
.b1{
	width:202px;
	background-color:#D5D5D5;
	height:50px;
}
.b2{
	width:202px;
	background-color:#A6A6A6;
	height:50px;
}

</style>

	<div align="center">
		<h2>로그인</h2>
		<!-- 
1. myweb사이트와 연동되어야 한다.
2. 로그인시 필요한 아이디와 비밀번호를 입력받게 설정
3. 로그인 버튼과, 회원가입 버튼을 생성 -->
		<form action="user_login_ok.jsp" method="post">
			<table>
			<tr>
				<td width="70">아이디 :</td>
				<td><input type="text" name="id"></td>
			</tr>
			
			<tr>
				<td>비밀번호 : </td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
			<td><input type="submit" value="로그인" class="b1"></td>
			<td><input type="button" value="회원가입" class="b2" onclick="location.href='join.jsp'"></td>
			</tr>
			</table>
		</form>
	</div>

	<%@include file="../include/_footer.jsp"%>
	
<script>

</script>	
	