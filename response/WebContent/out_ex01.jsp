<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>out객체</h2>
<p>
	out객체는 jsp에서 html로 보내기 위한 출력 객체, 표현식이 이를 대체하고 있음.
</p>
<%
for(int i=1;i<=10;i++){
	out.println("<input type='checkbox' name='check'>"+i);
}
%>
</body>
</html>