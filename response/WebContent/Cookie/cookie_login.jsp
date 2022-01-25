<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
로그인 성공시 cookie를 통해서 로그인 정보를 추가
로그인 정보를 유지하는 내용!!
 --%>
<%
/*
	1.idcheck쿠키를 찾아서, idcheck쿠키가 있다면,
	해당값을 얻어서 아이디 안에 미리 값을 갖게 코드 작성!!
	2.form태그를 사용하여 로그인 정보를 전달할 수 있는 페이지
		(cookie_login_ok.jsp)
	
*/

Cookie[] arr=request.getCookies();
String sid="";
if(arr!=null){
	for(int i=0;i<arr.length;i++){
		if(arr[i].getName().equals("idcheck")){
			sid=arr[i].getValue();
		}
	}
}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="cookie_login_ok.jsp" method="get">
아이디: <input type="text" name="id" value=<%=sid %>><br>
비밀번호: <input type="password" name="pw"><br>
<input type="submit">
<input type="checkbox" name="idcheck" value="y" > 아이디 기억하기
</form>
</body>
</html>