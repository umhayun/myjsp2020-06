package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCselect2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
		String uid="myjsp";
		String upw="myjsp";
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="select * from member";
		//1.드라이버 로드
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, uid, upw);
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
			String id2=rs.getString("id");
			String pw2=rs.getString("pw");
			String name2=rs.getString("name");
			String email2=rs.getString("email");
			System.out.println("--------------------");
			System.out.println("id : "+id2);
			System.out.println("pw : "+pw2);
			System.out.println("name : "+ name2);
			System.out.println("email : "+ email2);
			}
			
		} catch (ClassNotFoundException cnfe) {
			System.out.println("드라이버 로드 불가 : "+cnfe.toString());
		}catch (SQLException sqle) {
			System.out.println("sql오류 : "+ sqle.toString());
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(stmt!=null) stmt.close();
			}catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
	}

}
