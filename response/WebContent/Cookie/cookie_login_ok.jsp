<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
/*
1.���̵�� ��й�ȣ �޾Ƴ�.
2.id=abc�̰�, pw=1234��� �α��� �����̶� ����, (user_id,id)���� ������ Cookie����
3.��Ű ���� ��� ��Ű ���� cookie_welcome.jsp�� �̵�
(cookie_welcome.jsp������ �α��� ������ "xxx�� ȯ���մϴ�."�� ��µǰ� �ϼ���)
4. ���̵�� ��й�ȣ�� Ʋ�ȴٸ�, cookie_login.jsp�� �̵�.
*/
String uid=request.getParameter("id");
String upw=request.getParameter("pw");
String idcheck=request.getParameter("idcheck");
if(uid.equals("abc")&&upw.equals("1234")){
	Cookie id=new Cookie("user_id",uid);
	id.setMaxAge(30);
	response.addCookie(id);
	
	if(idcheck!=null){
		Cookie check=new Cookie("idcheck",uid);
		check.setMaxAge(1800); //30��
		response.addCookie(check);
	}
	
	
	response.sendRedirect("cookie_welcome.jsp");
	
}
else{
	response.sendRedirect("cookie_login.jsp");
}
%>
