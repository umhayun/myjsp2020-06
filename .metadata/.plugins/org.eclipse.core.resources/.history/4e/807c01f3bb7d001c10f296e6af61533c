<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id=request.getParameter("id");
String pw=request.getParameter("pw"); 
String pwcheck=request.getParameter("pwcheck");
String name=request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="com.bean.User" %>

<%-- <%
if(pw.equals(pwcheck)){
User user=new User();
user.setId(id);
user.setPw(pw);
user.setName(name);

request.setAttribute("user", user);
request.getRequestDispatcher("quiz03.jsp").forward(request, response);

}
else{
	response.sendRedirect("quiz04.jsp");
}
%>  
 --%>

<%if(!pw.equals(pwcheck)){ %>
<jsp:useBean id="u2" class="com.bean.User" scope="request"/>
<jsp:setProperty property="id" name="u2" value="<%=id %>"/>
<jsp:setProperty property="pw" name="u2" value="<%=pw %>"/>
<jsp:setProperty property="name" name="u2" value="<%=name %>"/>
<jsp:forward page="quiz03.jsp"/>
<%}else{
	response.sendRedirect("quiz04.jsp");
	
}%>

</body>
</html>