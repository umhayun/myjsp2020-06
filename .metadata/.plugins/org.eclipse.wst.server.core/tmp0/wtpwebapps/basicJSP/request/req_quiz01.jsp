<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
1. form태그를 이용하여 post형식으로 이름, 키 몸무게를 입력받음.
2.req_quiz_result.jsp로 입력 값을 전달
3. 전달된 페이지(req_quiz_result.jsp>에서는 넘어간 값 처리
	BMI지수 처리함.
4. BMI공식= kg/(cm/100*cm/100)
	->String 형식의 값으로 전달됨. Integer.parseInt(값)
		또는 Double.parseDouble(값) 사용.
		화면에 이름,키, 몸무게 BMI지수 출력
		if를 통해서 BMI지수가 25이상 과체중 18이하 저체중 나머지 정상 출력
--%>
<form action="req_quiz_result.jsp" method="post">

이름: <input type="text" name="name"><br>

키 :   <input type="text" name="height"><br>
몸무게: <input type="text" name="weight"><br>
<input type="submit" value="BMI계산">

</form>

</body>
</html>