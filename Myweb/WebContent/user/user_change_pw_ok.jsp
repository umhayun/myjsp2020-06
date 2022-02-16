<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/_header.jsp" %>
<%
/*
1.폼값 처리
2. login(id, 예전 비밀번호) 아이디로 비밀번호가 맞는지 확인
	예전 비밀번호가 틀리면 뒤로가기
3. 일치하면 changepassword()를 실행
4. 성공하면 "비밀번호 변경처리 되었습니다."출력하고 mypage로 이동
	실패하면 "비밀번호 변경에 실패했습니다."를  출력하고, mypage로 이동
*/
request.setCharacterEncoding("utf-8");
//강제 url접속 차단
if(session.getAttribute("user_id")==null){
	response.sendRedirect("user_login.jsp");
}
UserDAO dao=UserDAO.getInstance();
String id=(String)session.getAttribute("user_id");
String old_pw=request.getParameter("old_pw");
String new_pw=request.getParameter("new_pw");
int result=dao.login(id, old_pw);
if(result==0){//불일치%>
	<script>
	alert("비밀번호가 일치하지 않습니다.");
	history.go(-1);
	</script>
<%}
else //일치
{
	int cgresult=dao.changepassword(id,new_pw);
	if(cgresult==1){//성공%>
	<script>
		alert("비밀번호 변경처리되었습니다.");
		location.href="user_mypage.jsp";
		</script>
<%}else{//실패%>
	<script>
	alert("비밀번호 변경에 실패했습니다.");
	location.href="user_mypage.jsp";
	</script>
<%			
	}		
}
%>
<%@include file="../include/_footer.jsp" %>