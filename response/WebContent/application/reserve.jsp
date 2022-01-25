<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        
<%
//예약현황이 있다면, 예약 좌석을 꺼내서 처리
List<String> list=new ArrayList<>();
if(application.getAttribute("seat")!=null){
	list=(List<String>)application.getAttribute("seat");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>콘서트 예약 페이지</h2>
<h4>예약할 좌석을 선택하세요</h4>
<hr>
<form action="reserve_ok.jsp" method="post">
	<b>좌석 배치도</b><br>
	&nbsp;&nbsp;&nbsp;
	<%for(char c='A';c<='Z';c++){%>
		<small><%=c %></small>&nbsp;&nbsp;
	<% }%><br>
	<%for(int i=1;i<=6;i++){
		//라인 번호
		%>
		<%=i %>		
	<% for(char c='A';c<='Z';c++){%>
		<%if(list.contains(c+"-"+i)){ %>
			<input type="checkbox" name="seat" value="<%=c%>-<%=i%>" disabled>
		<%}else{ %>
		<input type="checkbox" name="seat" value="<%=c%>-<%=i%>">
		<%} %>
	<%} %>
	<br>
	<%if(i==3){%>
	<br>
	<%}
	}%>
	
	<br>
	<input type="submit" value="예약">
	<input type="reset" value="취소">
	
</form>
</div>
</body>
</html>
















