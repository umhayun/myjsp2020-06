<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
//��Ű ����ϱ�
//��Ű�¿�û�� �ڵ����� ���۵ǰ� request�� �ڵ����� �����.
Cookie[] arr=request.getCookies();
if(arr!=null){ //��Ű�� null�� �ƴ� ���(������ ���)
	for(int i=0; i<arr.length;i++){
		out.println(arr[i].getName()+"<br>"); //��Ű �̸� ���
		out.println(arr[i].getValue()+"<br>");//��Ű �� ���
		out.println("<br>");
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

</body>
</html>