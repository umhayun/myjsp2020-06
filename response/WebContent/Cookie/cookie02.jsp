<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

Cookie[] arr=request.getCookies();
String date=null;

if(arr!=null){ //��Ű�� null�� �ƴ� ���(������ ���)
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
		��Ű�� �����ϴ�.
	<%}else{
	%>
	������ ���� ��¥ : <%=date %>
	<%}
	%>
</body>
</html>