<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	/*
	���ǿ� ����� ���� ���� �������� ����Ǳ����, �Ǵ� �⺻�ð� 30�б��� ��� ������������ 
	����� �����ϴ�.
	getAttribut("�����̸�")�޼�����
	*/
	String id=(String)session.getAttribute("id");
	String name=(String)session.getAttribute("name");
	//���� �����ð� Ȯ��
	int time=session.getMaxInactiveInterval();
	//���� �����ð� ����
	session.setMaxInactiveInterval(3600);
	int time2=session.getMaxInactiveInterval();
	//��� ���� ����
	session.invalidate();
	//getid()
	String _session=session.getId();
	//getAttributeNames()
	ArrayList<String> list=(ArrayList<String>)session.getAttributeNames();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���̵�: <%=id %><br>
	�̸�:	  <%=name %><br>
	�����ð�: <%=time %><br>
	�����ð� ������: <%=time2 %><br>
	����ID: <%=session %><br>
	
</body>
</html>