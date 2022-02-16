<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/_header.jsp" %>
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

	<section>
		<div align="center" >
			<h1>회원가입</h1>
			<form name="regform" action="user_join_ok.jsp" method="post">			
				<table>
					<tr  >
						<td >아이디</td>
						<td><input type="text" name="id" placeholder="4글자 이상 8글자 이하"></td>
					</tr>
					<tr >
						<td>비밀번호</td>
						<td><input type="password" name="pw"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" name="pw_check"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="email" name="email"></td>
					</tr>
					<tr>
						<td>주소</td>
						<td><input type="text" name="address"></td>
					</tr>
					
				</table>
				<br>
					<input class="b1" type="button" value="회원가입" class="btn btn-primary" onclick="check()">
					<input class="b2" type="button" value="로그인" class="btn btn-info" onclick="location.href='user_login.jsp'">
							
				<br>
				<br>
			</form>

		</div>
	</section>
	<%@include file="../include/_footer.jsp" %>
	<script type="text/javascript">
		function check(){
			//form은 document.태그이름.태그이름으로 하위 태그에 접근 가능
			//console.log(document.regform.id.value); =>input에입력한값 표시
			if(document.regform.id.value==''){
				alert("아이디는 필수 사항입니다.");
				return;//종료
			}else if(document.regform.id.value.length<4 || document.regform.id.value.length>8){
				alert("아이디는 4글자 이상 8글자 이하로 입력하세요.");
				return;//종료
			}else if(document.regform.value==''){
				alert("비밀번호는 필수사항입니다.");
				return;
			}else if(document.regform.pw.value!=document.regform.pw_check.value){
				alert("비밀번호 확인란을 확인하세요.");
				return;
			}else if(document.regform.name.value==''){
				alert("이름은 필수 사항입니다.");
				return;
			}else if(confirm("회원 가입을 하시겠습니까?")){
				//confirm() 확인창에 "예" 클릭하면 true 반환, "아니오" 클릭시 false 를 반환
				document.regform.submit(); //자바 스크립트를 이용한 submit() 기능
				
			}
			
		}
	</script>
