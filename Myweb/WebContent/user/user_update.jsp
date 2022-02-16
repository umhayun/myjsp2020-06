<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	/*
    	이 페이지에 들어올 때, getUserInfo()메서드를 재활용해서 정보를 불러온 후에
    	input태그에 해당값이 보여지도록 처리
    	id태그 변경불가, 비밀번호 변경 불가 
    	*/
    	
    	if(session.getAttribute("user_id")==null){
    		response.sendRedirect("user_mypage.jsp");
    	}
    	String id=(String)session.getAttribute("user_id");
    	UserDAO dao=UserDAO.getInstance();
    	UserVO vo=dao.getUserInfo(id);
    	String name=vo.getName();
    	String email=vo.getEmail();
    	
    %>
<%@include file="../include/_header.jsp" %>
<section>
		<div align="center" >
			<h1>회원정보 수정</h1>
			<form name="regform" action="user_update_ok.jsp" method="post">			
				<table>
					<tr  >
						<td >아이디</td>
						<td><input type="text" name="id" placeholder="4글자 이상 8글자 이하" readonly value="<%=vo.getId()%>" ></td>
					</tr>

					<tr>
						<td>이름</td>
						<td><input type="text" name="name" value="<%=vo.getName()%>"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="email" name="email" value="<%=vo.getEmail()%>"></td>
					</tr>
					<tr>
						<td>주소</td>
						<td><input type="text" name="address" value="<%=vo.getAddress()%>"></td>
					</tr>
					
				</table>
				<br>
					<input type="button" value="회원정보 수정" onclick="check()">
					<input type="button" value="마이페이지" onclick="location.href='user_mypage.jsp'">
					
							
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
			if(document.regform.name.value==''){
				alert("이름은 필수 사항입니다.");
				return;
			}else if(confirm("회원 정보 수정하시겠습니까?")){
				//confirm() 확인창에 "예" 클릭하면 true 반환, "아니오" 클릭시 false 를 반환
				document.regform.submit(); //자바 스크립트를 이용한 submit() 기능
				
			}
			
		}
	</script>