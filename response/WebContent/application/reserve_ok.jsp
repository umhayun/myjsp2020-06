<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//���� ���� Ȯ�� ������
//1. ����Ʈ �ΰ� ����(�¼� ���� ����Ʈ, �纻�� ������ ����Ʈ)
List<String> list=new ArrayList<>();
List<String> temp=new ArrayList<>();
//2.app�� ���� ��Ȳ�� �ִٸ� ���� ����Ʈ�� ����
if(application.getAttribute("seat")!=null){
	list=(List<String>)application.getAttribute("seat");
}
//3.reserve.jsp�Ѿ�� ���� �� Ȯ��
String[] arr=request.getParameterValues("seat");
//4.arr�� ����� ���� list�� ���ԵǾ� �ִ��� Ȯ��. contains(��)
for(String s: arr){
	if(list.contains(s)){//����� ���
		break;//�ߴ�
	}else{
		temp.add(s);
	}
}

//5. arr���̿� temp���� üũ, ���ٸ� �ߺ��� �¼��� ���� ���, ���� ��Ȳ(list)�� �߰�
if(arr.length==temp.size()){
	list.addAll(temp);
}//���� ���н� �۾�

//6. application�� ����
application.setAttribute("seat", list);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>������ �¼�</h2>
	<p>
		<b>������ �¼�</b>
		<%for(String s:arr) {%>
		[<%=s %>]
		<%} %>
		<b>���� ��û ���</b>
		<%=arr.length==temp.size()?"����":"����" %>
		<br>
		<%if(arr.length!=temp.size()){ %>
			�̹� ����� �¼��Դϴ�.
		<%} %>
	</p>
	<a href="reserve.jsp">�ٽ� �����ϱ�</a>
</div>
</body>
</html>

















