<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
�α��� ������ cookie�� ���ؼ� �α��� ������ �߰�
�α��� ������ �����ϴ� ����!!
 --%>
<%
/*
	1.idcheck��Ű�� ã�Ƽ�, idcheck��Ű�� �ִٸ�,
	�ش簪�� �� ���̵� �ȿ� �̸� ���� ���� �ڵ� �ۼ�!!
	2.form�±׸� ����Ͽ� �α��� ������ ������ �� �ִ� ������
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
���̵�: <input type="text" name="id" value=<%=sid %>><br>
��й�ȣ: <input type="password" name="pw"><br>
<input type="submit">
<input type="checkbox" name="idcheck" value="y" > ���̵� ����ϱ�
</form>
</body>
</html>