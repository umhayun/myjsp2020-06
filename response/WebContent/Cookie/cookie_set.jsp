<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
//��Ű ���� ���
// 1. ��Ű ��ü ����- ������ �Ű�������(��Ű�̸�, ��Ű��)
Cookie idCoo=new Cookie("user_id","kkk123");
Cookie nameCoo=new Cookie("user_name","ȫ�浿");

//2.��Ű �ð�����
idCoo.setMaxAge(3600);//1�ð� ����
nameCoo.setMaxAge(30); //30�� ����

//3.����ٱ���(response)�� ��Ű ž��
response.addCookie(idCoo);
response.addCookie(nameCoo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<a href="cookie_get.jsp">��ŰȮ��</a>
</body>
</html>