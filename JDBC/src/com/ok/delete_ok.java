package com.ok;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/delete_ok")
public class delete_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public delete_ok() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("sid");
		MemberDAO dao= MemberDAO.getInstance();
		int result=dao.delete(id);
		if(result==1) {
			response.sendRedirect("login.jsp");
		}
		else
			response.sendRedirect("mypage.jsp");
//		String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
//		String user="myjsp";
//		String password="myjsp";
//		String driver="oracle.jdbc.driver.OracleDriver";
//		
//		Connection conn=null;
//		PreparedStatement pstmt=null;
//		
//		
//		String sql="delete from testusers where id=?";
//		
//		try {
//			Class.forName(driver);
//			conn=DriverManager.getConnection(url, user, password);
//			pstmt=conn.prepareStatement(sql);
//			pstmt.setString(1, id);
//			int result=pstmt.executeUpdate();
//			if(result==1) {
//				session.invalidate();
//				response.sendRedirect("login.jsp");
//				System.out.println("성공");
//				
//			}
//			else{
//				response.sendRedirect("mypage.jsp");
//				System.out.println("실패");
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				if(conn!=null) conn.close();
//				if(pstmt!=null) pstmt.close();
//			} catch (Exception e) {
//				// TODO: handle exception
//			}
//		}
//		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}











