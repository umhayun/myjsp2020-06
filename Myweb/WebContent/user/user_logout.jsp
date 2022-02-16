<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/_header.jsp"%>
<%
session.invalidate();
response.sendRedirect("user_login.jsp");
%>
<%@include file="../include/_footer.jsp"%>