<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- form태그를 사용하여 ID를 입력받아 처리-->
	<form action="../forward" method="post">
		ID : <input type="text" name="id">
		<input type="submit" value="확인">
	</form>
	<form action="forward.jsp" method="post">
		ID : <input type="text" name="id">
		<input type="submit" value="확인">
	</form>
</body>
</html>