<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        
<%
//������Ȳ�� �ִٸ�, ���� �¼��� ������ ó��
List<String> list=new ArrayList<>();
if(application.getAttribute("seat")!=null){
	list=(List<String>)application.getAttribute("seat");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>�ܼ�Ʈ ���� ������</h2>
<h4>������ �¼��� �����ϼ���</h4>
<hr>
<form action="reserve_ok.jsp" method="post">
	<b>�¼� ��ġ��</b><br>
	&nbsp;&nbsp;&nbsp;
	<%for(char c='A';c<='Z';c++){%>
		<small><%=c %></small>&nbsp;&nbsp;
	<% }%><br>
	<%for(int i=1;i<=6;i++){
		//���� ��ȣ
		%>
		<%=i %>		
	<% for(char c='A';c<='Z';c++){%>
		<%if(list.contains(c+"-"+i)){ %>
			<input type="checkbox" name="seat" value="<%=c%>-<%=i%>" disabled>
		<%}else{ %>
		<input type="checkbox" name="seat" value="<%=c%>-<%=i%>">
		<%} %>
	<%} %>
	<br>
	<%if(i==3){%>
	<br>
	<%}
	}%>
	
	<br>
	<input type="submit" value="����">
	<input type="reset" value="���">
	
</form>
</div>
</body>
</html>
















