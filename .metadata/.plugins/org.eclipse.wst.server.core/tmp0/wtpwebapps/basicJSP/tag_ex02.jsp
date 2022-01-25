<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--페이지 누적 요청 및 랜덤 값 출력, 매 10번째 방문자에겐 기프티콘 드립니다. --%>
<%--10번째마다 '당청되었습니다!' 출력 --%>
<%--scriptlet을 <body>태그에서 작성하세요!! --%>
<%!
int total=0;
public int rannum(){
	Random ran=new Random();
	int r=ran.nextInt(9)+1;
	return r;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
total++;
int rn=rannum();
%>
페이지 누적 요청 : <%=total %><br>
오늘의 숫자 : <%=rn %><br>
매 10번째 방문자에게는 기프티콘을 드립니다. <br>
<%
if(total%10==0){
	%>
	당첨되었습니다.
	<%
}
%>

<h2>랜덤 구구단 <%=rn %>단 입니다.</h2>
<%
for(int i=1;i<=9;i++){
	int re=rn*i;
	%>
	<%=rn %>*<%=i %>=<%=re %><br>
	<%
}
%>
</body>
</html>







