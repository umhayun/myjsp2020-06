package com.myweb.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JdbcUtil {
	//conn,pstmt,rsë«ë ìì
	
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(conn!=null) conn.close();
			if(pstmt!=null) pstmt.close();
			if(rs!=null) rs.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
