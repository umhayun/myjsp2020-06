package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCdelete {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
		String uid="myjsp";
		String upw="myjsp";
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		ResultSet rs2=null;
		System.out.println("삭제할 id 입력>");
		String idsc=sc.next();
		String sql="select* from member";
		String sql2="DELETE FROM member where id='"+idsc+"'";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, uid, upw);
			stmt=conn.createStatement();
			 rs=stmt.executeQuery(sql);
			while(rs.next()) {
				String id3=rs.getString("id");
			
				if(id3.equals(idsc)) {
					int result=stmt.executeUpdate(sql2);
					if(result==1) {
						System.out.println("삭제 성공");
						break;
					}
					else {
						System.out.println("삭제 실패");
					}
				}
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
