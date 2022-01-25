<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//out.println(),break사용해서 구구단 4단 출력
int a=4;
int i=1;
while(true){
	out.println(a+"*"+i+"="+(a*i)+"<br>"); 
	if(i==9)
		break;
	i++;
}

%>
<hr>
<%

//1. 체크박스 20개 for문 이용하여 가로로 생성
for(int j=1;j<=20;j++){
	%>
	<input type=checkbox name="test">
	<% 
}
%>

</body>
</html>