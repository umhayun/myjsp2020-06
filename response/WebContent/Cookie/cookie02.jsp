<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

Cookie[] arr=request.getCookies();
String date=null;

if(arr!=null){ //쿠키가 null이 아닌 경우(존재할 경우)
	for(int i=0; i<arr.length;i++){
		if(arr[i].getName().equals("show")){
			date=arr[i].getValue();
		}
	}
} %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	if(date==null){
		%>
		쿠키가 없습니다.
	<%}else{
	%>
	마지막 접속 날짜 : <%=date %>
	<%}
	%>
</body>
</html>