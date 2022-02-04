<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/* 진행흐름 : 
	1. 전달받은 값을 처리
	2. 회원가입 여부를 확인
	3. 가입된 경우 실패(뒤로가기)(history.go(-1)) | 가입 안된경우 ->진행
	4. 회원가입 축하 및 로그인 페이지 이동 | 실패시 재가입 페이지로 이동

	*/
	request.setCharacterEncoding("utf-8");
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");	
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String address=request.getParameter("address");
	
	UserDAO dao=UserDAO.getInstance();
	UserVO vo=new UserVO(id,pw,name,email,address,null);
	
	int result=dao.idConfirm(id);
	if(result==1){ //중복없을때
		int result2=dao.join(vo);
		if(result2==1){
		%>
		<script>
			alert("가입 축하");
			location.href="user_login.jsp"
		</script>
<%
	//response.sendRedirect("user_login.jsp");
		}else{%>
			<script>
				alert("가입실패");
				history.go(-1);
			</script>

<%		}
	}else{%>
	<script>
		alert("아이디 중복");
		history.go(-1);
	</script>

<% }%>
