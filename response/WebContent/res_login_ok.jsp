<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 1�� ���������� �Ѿ�� id,pw���� �޾Ƽ� ó��
id�� abc123�̰�, ��й�ȣ asd123�̸�, �α��μ���,
login_welcome�������� �����̷�Ʈ
id�� Ʋ����� login_id_fail�������� �����̷�Ʈ 
pw�� Ʋ�� ��� login_pw_fail�������� �����̷�Ʈ
-->

<%
String id="abc123";
String pw="asd123";

String uid=request.getParameter("id");
String upw=request.getParameter("pw");

if(uid.equals(id)&&upw.equals(pw)){
	response.sendRedirect("login_welcome.jsp");
}
else if(!uid.equals(id)){
	response.sendRedirect("login_id_fail.jsp");
}
else if(!upw.equals(pw)){
	response.sendRedirect("login_pw_fail.jsp");
}

%>