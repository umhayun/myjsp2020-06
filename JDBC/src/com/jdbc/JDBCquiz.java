package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCquiz {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
		String uid="myjsp";
		String upw="myjsp";
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		System.out.print("id입력하세요>");
		String id=sc.next();
		String sql="select * from member where id='"+id+"'";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, uid, upw);
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()) {
				String id1=rs.getString("id");
				String pw1=rs.getString("pw");
				String name1=rs.getString("name");
				String email1=rs.getString("email");
				System.out.println("id : "+id1);
				System.out.println("pw : "+pw1);
				System.out.println("name : "+name1);
				System.out.println("email : "+email1);
			}
			else {
				System.out.println(id+"는 없습니다.");
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
				if(rs!=null)  rs.close();
			}catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
		
	}
}
