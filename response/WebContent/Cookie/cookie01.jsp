<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
/* cookie01.jsp�� ���������� ������ �ð��� xxxx�� xx�� xx�� ���·� ��Ű ����
��¥ ������ ���ڿ� ���·� show��� �̸��� ��Ű�� ����
cookie02.jsp�� cookie01.jsp���� ������ ��Ű�� Ȯ���ϴ� ������
show��Ű�� �ִٸ�, ��Ű�� ������ �ִ� ���� ȭ�鿡 ���,
���� ���ٸ�, "��Ű�� �����ϴ�."�� ���.
*/

Date now=new Date();
SimpleDateFormat date=new SimpleDateFormat("hh:mm:ss");
Cookie show=new Cookie("show",date.format(now));

//2.��Ű �ð�����
show.setMaxAge(30);//30�� ����

//3.����ٱ���(response)�� ��Ű ž��
response.addCookie(show);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<a href="cookie02.jsp">��ŰȮ��</a>
</body>
</html>