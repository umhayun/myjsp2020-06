package com.ok;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet("/login_ok")
public class login_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public login_ok() {
        super(); 
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그인 form으로 받은 정보 전달 받음
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		 
		//DB연동을 위한 변수및 객체 생성
		/*
		 * String url="jdbc:oracle:thin:@localhost:1521/XEPDB1"; String user="myjsp";
		 * String password="myjsp"; String driver="oracle.jdbc.driver.OracleDriver";
		 * Connection conn=null; PreparedStatement pstmt=null; ResultSet rs=null;
		 * 
		 * String sql="select * from testusers where id=? and pw=?";
		 */
		MemberDAO dao=MemberDAO.getInstance();
		int result=dao.login(id,pw);
		
		if(result==1) {
			HttpSession session=request.getSession();
			session.setAttribute("sid",id);
			response.sendRedirect("mypage.jsp");
		}
		else
			response.sendRedirect("login.jsp");
		
		/*
		 * try { Class.forName(driver); conn=DriverManager.getConnection(url, user,
		 * password); pstmt=conn.prepareStatement(sql); pstmt.setString(1, id);
		 * pstmt.setString(2, pw); rs=pstmt.executeQuery(); if(rs.next()) { //아이디,패스워드
		 * 일치 response.sendRedirect("mypage.jsp"); HttpSession
		 * session=request.getSession(); session.setAttribute("sid",id);
		 * session.setAttribute("spw", pw); } else { //로그인실패-아이디 or 패스워드 불일치
		 * response.sendRedirect("login_fail.jsp");
		 * 
		 * } }catch (Exception e) { // TODO: handle exception e.printStackTrace();
		 * }finally { try { if(conn!=null) conn.close(); if(pstmt!=null) conn.close();
		 * if(rs!=null) rs.close(); } catch (Exception e2) { // TODO: handle exception
		 * e2.printStackTrace(); } }
		 */
		
	}

}
