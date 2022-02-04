package com.ok;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

	private DataSource ds; //데이터 소스 객체 생성
	private Context ct;// javax.naming.*
	
	
	private static MemberDAO instance=new MemberDAO();
	

	private MemberDAO() {

		try {
			ct=new InitialContext();//이니셜 컨텍스트 객체 생성
			ds=(DataSource)ct.lookup("java:comp/env/jdbc/oracle"); //이니셜 컨텍스트로부터 찾음.
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static MemberDAO getInstance() {
		return instance;
	}

	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	//----------기능을 메서드로 선언 ------------------//
	//회원 가입 메서드
	public int join(MemberVO vo) {
		int result=0;
		String sql="insert into testusers values(?,?,?,?,?,?,?)";
		
		try {
			//connection 객체 생성
			//conn=DriverManager.getConnection(url, user, password);
			conn=ds.getConnection();
			//PreparedStatement 객체 생성
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getPhone1());
			pstmt.setString(5, vo.getPhone2());
			pstmt.setString(6, vo.getEmail());
			pstmt.setString(7, vo.getGender());
			result= pstmt.executeUpdate();
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
	
	public int login(String id, String pw) {
		int result=0;
		String sql="select * from testusers where id=? and pw=?";
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs=pstmt.executeQuery();
			if(rs.next())
				result=1;
			else
				result=0;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		return result;
	}
	public MemberVO getInfo(String id) {
		MemberVO vo=null;
		String sql="select * from testusers where id=?";
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				//rs.getString(컬럼명)으로 값을 얻어오는 코드 작선
				String name=rs.getString("name");
				String phone1=rs.getString("phone1");
				String phone2=rs.getString("phone2");
				String email=rs.getString("email");
				String gender=rs.getString("gender");
				vo=new MemberVO(id, null, name, phone1, phone2, email, gender);
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return vo;
	}
	
	public int update(MemberVO vo) {
		String sql="update testusers set name=?, phone1=?,phone2=?, email=?, gender=? where id=?";
		int result=0;
		try {
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPhone1());
			pstmt.setString(3, vo.getPhone2());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getGender());
			pstmt.setString(6, vo.getId());
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int delete(String id) {
		int result=0;
		String sql="delete from testusers where id=?";
		try {
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);
			result=pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstmt!=null) pstmt.close();
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
				
		return result;
	}
}  















