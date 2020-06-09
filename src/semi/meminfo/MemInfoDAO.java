package semi.meminfo;
import java.util.*;
import java.sql.*;
import java.sql.Date;
public class MemInfoDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	//hyun
	//로그인 시 세션에 dto담는 메서드
	public MemInfoDTO getMemDTO(String id) {
		try {
			conn=semi.db.SemiDB.getCon();
			String sql="select * from meminfo where mid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			rs.next();
			int midx=rs.getInt("midx");
			String mname=rs.getString("mname");
			String mid=rs.getString("mid");
			String mpwd=rs.getString("mpwd");
			String memail=rs.getString("memail");
			int mage=rs.getInt("mage");
			int msex=rs.getInt("msex");
			String maddr=rs.getString("maddr");
			String mtel=rs.getString("mtel");
			int mtype=rs.getInt("mtype");
			java.sql.Date mjoindate=rs.getDate("mjoindate");
			String mdob=rs.getString("mdob");
			int toeic = rs.getInt("toeic");
			int toss = rs.getInt("toss");
			int toefl= rs.getInt("toefl");
			
			MemInfoDTO mdto = new MemInfoDTO(midx, mname, mid, mpwd, memail, mage, msex, maddr, mtel, mtype, mjoindate, mdob, toeic, toss, toefl);
			return mdto;
					
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
	}
	
	//hyun
	public int login(String id,String pwd) {
		try {
			conn=semi.db.SemiDB.getCon();
			String sql="select mpwd from meminfo where mid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			if(rs.next()) {
				String dbpwd=rs.getString(1);
				if(dbpwd.equals(pwd)) {
					return 3;
				}else {
					return 2;
				}
			}else {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
	}
	//yong
	public int memberJoin(MemInfoDTO dto) {
	      try {
	         conn = semi.db.SemiDB.getCon();
	         String sql ="insert into meminfo values(meminfo_midx.nextval,?,?,?,?,?,?,?,?,0,sysdate,?,?,?,?)";
	         ps = conn.prepareStatement(sql); 
	         ps.setString(1, dto.getMname());
	         ps.setString(2, dto.getMid());
	         ps.setString(3, dto.getMpwd());
	         ps.setString(4, dto.getMemail());
	         ps.setInt(5, dto.getMage());
	         ps.setInt(6, dto.getMsex());
	         ps.setString(7, dto.getMaddr());
	         ps.setString(8, dto.getMtel());
	         ps.setString(9, dto.getMdob());
	         ps.setInt(10, dto.getToeic());
	         ps.setInt(11, dto.getToss());
	         ps.setInt(12, dto.getToefl());
	         
	         int count = ps.executeUpdate();
	         return count; 
	      }catch(Exception e) {
	         e.printStackTrace();
	         return -1; 
	      }finally {
	         try {
	            if(ps!=null)ps.close();
	            if(conn!=null)conn.close();
	         }catch(Exception e2) {
	            
	         }
	      }
	   }
	   
	   
	   /**아이디 중복 체크 관련 메서드 */
	   //yong
	   public int idCheck(String mid) {
	      try {
	         conn = semi.db.SemiDB.getCon();
	         String sql ="select mid from meminfo where mid=?"; 
	         ps = conn.prepareStatement(sql);
	         ps.setString(1, mid);
	         rs = ps.executeQuery();
	         int count = 0; 
	         if(rs.next()) { count++; }
	            
	         return count; 
	      }catch(Exception e) {
	         e.printStackTrace();
	         return -1; 
	      }finally {
	         try {
	            if(rs!=null) rs.close();
	            if(ps!=null)ps.close();
	            if(conn!=null) conn.close();
	         }catch(Exception e2) {
	            
	         }
	      }
	   }
	   //hyun
	   //튜터인지학생인지구분(로그인하는순간)
	   public int getMemType(String id) {
		   try {
			conn=semi.db.SemiDB.getCon();
			String sql = "select mtype from meminfo where mid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			rs.next();
			return rs.getInt(1);
		} catch (Exception e) {
			return -1;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
	   }
	   /**마이페이지 정보 수정 관련 메서드  yong*/ 
	      public int updateMyInfo(MemInfoDTO dto) {
	         try {
	              conn = semi.db.SemiDB.getCon();
	              String sql ="update meminfo set memail=?,maddr=?,mtel=?,toeic=?,toss=?,toefl=?";
	              ps = conn.prepareStatement(sql); 
	              ps.setString(1, dto.getMemail());
	              ps.setString(2, dto.getMaddr());
	              ps.setString(3, dto.getMtel());
	              ps.setInt(4, dto.getToeic());
	              ps.setInt(5, dto.getToss());
	              ps.setInt(6, dto.getToefl());
	              
	              int count = ps.executeUpdate();
	              return count; 
	           }catch(Exception e) {
	              e.printStackTrace();
	              return -1; 
	           }finally {
	              try {
	                 if(ps!=null)ps.close();
	                 if(conn!=null)conn.close();
	              }catch(Exception e2) {
	                 
	              }
	           }
	      }
}
