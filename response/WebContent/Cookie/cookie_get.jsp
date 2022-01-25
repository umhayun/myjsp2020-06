<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
//쿠키 사용하기
//쿠키는요청시 자동으로 전송되고 request에 자동으로 저장됨.
Cookie[] arr=request.getCookies();
if(arr!=null){ //쿠키가 null이 아닌 경우(존재할 경우)
	for(int i=0; i<arr.length;i++){
		out.println(arr[i].getName()+"<br>"); //쿠키 이름 얻기
		out.println(arr[i].getValue()+"<br>");//쿠키 값 얻기
		out.println("<br>");
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

</body>
</html>