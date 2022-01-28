package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class JDBCPinsert {
	public static void main(String[] args) {
		//입력값 받는 처리(member)
		Scanner sc=new Scanner(System.in);
		System.out.print("id>");
		String id=sc.next();
		System.out.print("pw>");
		String pw=sc.next();
		System.out.print("name>");
		String name=sc.next();
		System.out.print("email>");
		String email=sc.next();
		
		String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
		String uid="myjsp";
		String upw="myjsp";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="insert into member values(?,?,?,?)";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, uid, upw);
			pstmt=conn.prepareStatement(sql);
			//pstmt 객체에 값을 설정시 setString, setInt, setDouble...
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			
			//pstmt실행(성공시1, 실패시0)
			int result=pstmt.executeUpdate(); //주의 > sql구문을 인자로 전달하지 않음.
			if(result==1) {
				System.out.println("입력 성공");
			}
			else {
				System.out.println("입력 실패");
			}
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// TODO: handle finally clause
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
}


























