package test02.ex02.setter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.core.convert.Property;
import org.springframework.stereotype.Component;

public class DatabaseDev {
		
		private String url;
		private String uid;
		private String upw;
		private Connection conn;
		private PreparedStatement pstmt;		
		private ResultSet rs;
		
		public void test() {
			try {
				this.conn=DriverManager.getConnection(url, uid, upw);
				String sql="select * from users where id='test'";
				this.pstmt=conn.prepareStatement(sql);
				this.rs=pstmt.executeQuery();
				System.out.println("연결성공");
				if(rs.next()) {
					String name=rs.getString("name");
					System.out.println(name);
				}
				
				
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("연결 실패");
			}
		}
		

		public String getUrl() {
			return url;
		}
		public void setUrl(String url) {
			this.url = url;
		}
		public String getUid() {
			return uid;
		}
		public void setUid(String uid) {
			this.uid = uid;
		}
		public String getUpw() {
			return upw;
		}
		public void setUpw(String upw) {
			this.upw = upw;
		}
		

	
}
