<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Connection conn=null;
String driver="oracle.jdbc.driver.OracleDriver"; //db드라이버
String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
/*
==driver==
MySQL(6이후): com.mysql.cj.jdbc.Driver
MySQL(6이전): com.mysql.jdbc.Driver
MariaDB: org.mariadb.jdbc.Driver
==URL설정==
오라클: jdbc:oracle:thin:@[서버주소(ip또는 도메인)]:[서비스포트]/[세션 or 계정]
MySQL(6이후): jdbc:mysql://[서버주소(IP또는 도메인)]:[서버포트(3306)]/[DB이름]?ServerTimezone="Asia/Seoul"
MySQL(6이전): jdbc:mysql://[서버주소(IP또는 도메인)]:[서버포트(3306)]/[DB이름]
MariaDB: 	 jdbc:mysql://[서버주소(IP또는 도메인)]:[서버포트(3306)]/[DB이름]
*/
String user="hr";
String password="hr";

Boolean connect=false;
try {
	//1.driver 로딩
	Class.forName(driver);
	//2.DB연결
	conn=DriverManager.getConnection(url, user, password);
	connect=true;
}catch (ClassNotFoundException cnfe) {
	//드라이버 로딩 실패시 예외
	connect=false;
	System.out.println("DB드라이버 로딩 실패 : "+cnfe.toString());
}catch (SQLException sqle) {
	//Connection실패시 에러(SQLException)
	connect=false;
	System.out.println("DB접속 실패 : "+sqle.toString());
}catch (Exception e) {
	// Unknown 에러
	connect=false;
	System.out.println("Unknown Error");
	e.printStackTrace();
}

if(connect) {
	System.out.println("연결성공");
}
else {
	System.out.println("연결실패");
}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 

		%>
</body>
</html>