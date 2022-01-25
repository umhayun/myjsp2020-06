<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
Cookie[] user=request.getCookies();
String userid="";
String userid2="";
if(user!=null){
	for(int i=0;i<user.length;i++){
		if(user[i].getName().equals("user_id")){
			userid=user[i].getValue();
		}
	}
	for(Cookie c:user){
		if(c.getName().equals("user_id")){
			userid2=c.getValue();
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%=userid %>님 환영합니다.
<%=userid2 %>님 환영합니다.
</body>
</html>