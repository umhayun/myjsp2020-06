<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    /*
    ������ ��Ű�� ���������� ���������� �����ϱ� ���ؼ� ����ϴ�,
    jsp���� ��ü ������ setAttribute("�̸�", ��)���� �����մϴ�.
    */
    session.setAttribute("id", "kkk123");
    session.setAttribute("name","ȫ����");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<a href="session_get.jsp">����Ȯ��</a>
</body>
</html>