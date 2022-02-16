<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	/*
	1.login(id,pw)메서드 생성
	executeQueary()  메서드를 사용하고 그 결과 값이 존재하는지 확인
	2. 결과값이 존재하면, 성공의 의미로 1반환
	결과 값이 없다면, 실패의 의미로 0 반환
	3. 실패인 경우 경고창을 출력후 뒤로 가기
	성공인 경우에는 user_mypage.jsp로 이동
	4. 성공시 user_mypage.jsp로 이동하기 전에 
	user_mypage.jsp에 전달할 정보를 세션에 넣어 저장하여 전달(UserVO객체에 정보를 저장)
	UserDAO애 getUserInfo
	*/
	UserDAO dao=UserDAO.getInstance();
	
	
	int result=dao.login(id, pw);
	if(result==1){
		//로그인성공시 회원정보 얻어오는 작업 진행
		UserVO vo=dao.getUserInfo(id);
		String name=vo.getName();
		session.setAttribute("user_id", id);
		session.setAttribute("user_name", name);
		session.setMaxInactiveInterval(3600);
		response.sendRedirect("user_mypage.jsp");
	}
	else{%>
		<script>
		alert("로그인 실패");
		history.go(-1);
		</script>
	<%}%>

















