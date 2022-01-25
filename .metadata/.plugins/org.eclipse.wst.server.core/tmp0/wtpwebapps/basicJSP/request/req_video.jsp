<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	테이블 페이지에서 a태그의 url주소 뒤에 title 변수로 식별값을 담아서 이동
	ok페이지에서는 넘어오는 값에 따라서 if~else if 형태 사용하여 다른화면이 보여지도록 처리
 -->
 <div align="center">
	<table border="1">
	<tr>
		<td>이미지</td>
		<td>장르</td>
		<td>이름</td>
		<td>등록일</td>
	</tr>
	<tr>
		<td width="100">
				<a href="req_video_ok.jsp?num=1">
						<img src="img/cat.jpg" width="100" height="100">
				</a>
		</td>
		<td>동물</td>
		<td>
			<a href="req_video_ok.jsp?num=1">크집사</a>
		</td>
		<td>2022.01.19</td>
	</tr>
	<tr>
		<td width="100">
				<a href="req_video_ok.jsp?num=2">
						<img src="img/bee.jpg" width="100" height="100">
				</a>
		</td>
		<td>동물</td>
		<td>
			<a href="req_video_ok.jsp?num=2">프응</a>
		</td>
		<td>2022.01.19</td>
	</tr>
	</table> 
 </div>
</body>
</html>