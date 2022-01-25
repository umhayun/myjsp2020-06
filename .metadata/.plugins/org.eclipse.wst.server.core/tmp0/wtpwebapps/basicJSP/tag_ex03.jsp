<%@page import="java.util.Collections"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Random random=new Random();
ArrayList<Integer> list=new ArrayList<>(6);
while(list.size()<6){
	int num=random.nextInt(45)+1;
	if(!list.contains(num))
		list.add(num);
}
Collections.sort(list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
ArrayList를 사용하여 1~45까지 랜덤한 번호를 발생시키고 리스트에 담으세요

body태그에서
이번주 로또번호 [1,2,3,4,5,6] 형식으로 출력
단, list.contain(값)을 사용하여 중복을 회피하고,
Collections.sort(리스트)를 사용하여 오름차순으로 정렬해주세요.
 -->
이번주 로또는 <strong> <%=list.toString() %> </strong>입니다.

</body>
</html>