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

@WebServlet("/update_ok")
public class update_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public update_ok() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		String phone1=request.getParameter("phone1");
		String phone2=request.getParameter("phone2");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(phone1);
		System.out.println(phone2);
		System.out.println(email);
		System.out.println(gender);
		
		String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
		String user="myjsp";
		String password="myjsp";
		String driver="oracle.jdbc.driver.OracleDriver";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		
		String sql="UPDATE testusers set pw=?, name=?, phone1=?,phone2=?, email=?, gender=?"
				+ "where id=?";
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, name);
			pstmt.setString(3, phone1);
			pstmt.setString(4, phone2);
			pstmt.setString(5, email);
			pstmt.setString(6, gender);
			pstmt.setString(7, id);
			
			int result=pstmt.executeUpdate();
			if(result==1) {
				response.sendRedirect("update_success.jsp");
			}
			else {
				response.sendRedirect("update_fail.jsp");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
				
	}

}
