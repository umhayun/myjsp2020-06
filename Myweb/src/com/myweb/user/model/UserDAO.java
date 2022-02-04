package com.myweb.user.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	/*
	 * DAO는 단수 DB연동을 담당하는 클래스
	 * 여러개 생성하도록 일반 클래스로 만들면, 메모리 과부하 올 수 있다.
	 * 싱글톤 패턴을 적용하여 객체를 1개로 제한.
	 * */
	//1. 스스로의 객체를 멤버변수로 선언하고 1개로 제한
	private static UserDAO instance=new UserDAO();
	//2.외부에서 객체를 생성할 수 없도록 생성자에 private를 처리
	private UserDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			System.out.println("드라이버 호출 시 에러 발생");
		}
	}
	//3.외부에서 객체를 요구할 때에 getter메서드를 사용하여 반환
	public static UserDAO getInstance() {
		return instance;
	}
	
	private String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
	private String user="myjsp";
	private String password="myjsp";
	
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	//id확인 메서드
	public int idConfirm(String id) {
		int result=0;
		String sql="select * from users where id=?";
		try {
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) //중복시
				result=0;
			else //중복없을시
				result=1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
	}
	//회원가입 메서드
	public int join(UserVO vo) {
		int result=0;
		String sql="insert into users(id,pw,name,email,address) values(?,?,?,?,?)";
		try {
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getAddress());
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
	}
}


















