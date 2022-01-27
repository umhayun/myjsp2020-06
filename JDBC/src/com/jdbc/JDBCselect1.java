package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCselect1 {

	public static void main(String[] args) 
		throws ClassNotFoundException, SQLException{
		// TODO Auto-generated method stub
		//DB연결을 위한 변수 : url, uid, upw
		String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
		String uid="myjsp";
		String upw="myjsp";
		
		//DB연동을 위한 필요 클래스를 변수 선언
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="select*from member";
		//1.드라이버로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2.커넥션 생성
		conn=DriverManager.getConnection(url, uid, upw);
		//3. Statement객체 생성
		stmt=conn.createStatement();

		//4.sql문 실행
		rs=stmt.executeQuery(sql);
		
		//rs객체값을 어떻게 사용하지??? rs.next()
		while(rs.next()) {
			/*
			 * rs.getString(컬럼명) 메서드를 사용하여 문자열 결과 얻을 수 있음.
			 * rs.getInt(컬럼명) 메서드를 사용하여 정수 숫자 데이터 얻을 수 있음.
			 * rs.getDouble(컬럼) 메서드를 사용하여 실수 숫자 데이터 얻을 수 있음
			 * rs.getTimeStamp(컬럼) 메서드를 사용하여 날짜 데이터를 얻을 수 있음.
			 * */
			String id1=rs.getString("id");
			String pw1=rs.getString("pw");
			String name1=rs.getString("name");
			String email1=rs.getString("email");
			System.out.println("--------------------");
			System.out.println("id값 : "+ id1);
			System.out.println("pw값 : "+pw1);
			System.out.println("name값 : "+name1);
			System.out.println("email값 : "+email1);
		}
		
		//5.생성 객체 해제
		conn.close();
		stmt.close();
		rs.close();
	}

}
