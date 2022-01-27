package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCtest2 {
	public static void main(String[] args) {
			
		//입력값을 받는 코드
		Scanner scan=new Scanner(System.in);
		
		System.out.println("id> ");
		String id=scan.next();
		System.out.println("pw> ");
		String pw=scan.next();
		System.out.println("name> ");
		String name=scan.next();
		System.out.println("email> ");
		String email=scan.next();
		//System.out.println("입력아이디"+id+"\n입력암호"+pw+"\n입력 이름"+name+"\n입력 이메일"+email);
		//DB연결을 위한 변수
		String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
		String uid="myjsp";
		String upw="myjsp";
		
		Connection conn=null;
		Statement stmt=null;
		//ResultSet 객체선언 안함...why?select문에서만사용.
		//SQL구문 : insert into member values (id, pw,name,email);
		String sql="insert into member values('"+id+"','"+pw+"','"+name+"','"+email+"')";
		
		try {
			//1.JDBC드라이버 호출
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2.커넥션
			conn=DriverManager.getConnection(url,uid,upw);
			//3. sql문을 전달할 객체 생성(Statement객체)
			stmt=conn.createStatement();
			//4.실행(성공시 1반환, 실패시 0반환)
			int result=stmt.executeUpdate(sql);
			
			if(result==1) {
				System.out.println("연결 성공");
			}
			else {
				System.out.println("연결 실패");
				
			}
			
		}catch (ClassNotFoundException cnfe) {
			System.out.println("드라이버를 로드하지 못함 : "+cnfe.toString());
		}catch(SQLException sqle) {
			System.out.println("SQL에러 : "+sqle.toString());
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(conn!=null) conn.close();
				if(stmt!=null) stmt.close();
			}catch (Exception e2) {
				// TODO: handle exception
			}
		}
	
	}
	
}
