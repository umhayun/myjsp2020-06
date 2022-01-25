<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String num=request.getParameter("num");
int number=Integer.parseInt(num);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(num==null){
%>
잘못된 접근입니다.
<%
}else if(number==1){%> 
<div align="center">
	<h2>크집사</h2>
	<p>1. 낯선 고양이 때문에 난리가 났어요!<br><br>
	<iframe width="1237" height="696" src="https://www.youtube.com/embed/e7j4NmRtHbI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<%}else if(number==2){%>
<div align="center">
<h2>프응</h2>
<p>벌집 꿀 먹는 리트리버 <br><br>
<iframe width="1237" height="696" src="https://www.youtube.com/embed/uvnvnyXjQCg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<%} %>
</body>
</html>















