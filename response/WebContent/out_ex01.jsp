<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>out��ü</h2>
<p>
	out��ü�� jsp���� html�� ������ ���� ��� ��ü, ǥ������ �̸� ��ü�ϰ� ����.
</p>
<%
for(int i=1;i<=10;i++){
	out.println("<input type='checkbox' name='check'>"+i);
}
%>
</body>
</html>