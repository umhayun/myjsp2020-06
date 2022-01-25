<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
double h=Double.parseDouble(request.getParameter("height"));
double w=Double.parseDouble(request.getParameter("weight"));
double b=w/(h/100*h/100);
b=(int)(b*100)/100.0;//연산을 통해서 자리수 잘라내는 방식
String bmi="";
if(b>=25)
	bmi="과체중";
else if(b<=18)
	bmi="저체중";
else
	bmi="정상";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름: <%=name %><br>
키: <%=h %><br>
몸무게: <%=w %><br>
BMI지수: <%=b %><br>
당신의 BMI 지수는 <%=bmi %> 입니다.
</body>
</html>