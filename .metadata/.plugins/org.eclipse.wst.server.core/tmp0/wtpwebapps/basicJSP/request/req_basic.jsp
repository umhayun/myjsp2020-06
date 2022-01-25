<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//request에는 브라우저에 대한 정보, 사용자가 전달하고자하는 많은 정보 자동으로 저장함
StringBuffer url=request.getRequestURL();
String uli=request.getRequestURI();
String path=request.getContextPath();
String query=request.getQueryString();
String addr=request.getRemoteAddr();
String proto=request.getProtocol();
String name=request.getParameter("name");
String[] lotto=request.getParameterValues("number");
System.out.println("접속주소: "+addr);



%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
url 주소: <%=url %><br>
uli 주소: <%=uli %><br>
컨텍스트 경로: <%=path %><br>
쿼리값: <%=query %><br>
접속 경로: <%=addr %><br>
프로토콜: <%=proto %><br>
이름: <%=name %><br>

</body>
</html>