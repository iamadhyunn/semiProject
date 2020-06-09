package semi.study_gr;
import java.sql.*;
import java.util.*;

public class Study_grDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	//hyun
	public ArrayList<Study_grDTO> myStudy(int midx_tmp){
	      try {
	         conn=semi.db.SemiDB.getCon();
	         String sql="select * from study_gr where midx=?";
	         ps=conn.prepareStatement(sql);
	         ps.setInt(1, midx_tmp);
	         rs=ps.executeQuery();
	         ArrayList<Study_grDTO> arr = new ArrayList<Study_grDTO>();
	         while(rs.next()) {
	            int midx=rs.getInt("midx");
	            int sidx=rs.getInt("sidx");
	            String stds=rs.getString("stds");
	            String s_gr_name=rs.getString("s_gr_name");
	            String sdate=rs.getString("sdate");
	            String edate=rs.getString("edate");
	            String sch_date=rs.getString("sch_date");
	            String sch_time=rs.getString("sch_time");
	            int stdgr_status=rs.getInt("stdgr_status");
	            String scontent=rs.getString("scontent");
	            String tutorname=rs.getString("tutorname");
	            int std_limit=rs.getInt("std_limit");
	            int toeic_limit=rs.getInt("toeic_limit");
	            int toss_limit=rs.getInt("toss_limit");
	            int toefl_limit=rs.getInt("toefl_limit");

	            Study_grDTO dto = new Study_grDTO(midx, sidx, stds, s_gr_name, sdate, edate, sch_date, sch_time, stdgr_status, scontent, tutorname, std_limit);
	            arr.add(dto);
	         }
	         return arr;
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
	public Study_grDTO studyInfo(int sidx_tmp) {
		try {
			conn=semi.db.SemiDB.getCon();
			String sql="select * from study_gr where sidx=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, sidx_tmp);
			rs=ps.executeQuery();
			rs.next();
			int midx=rs.getInt("midx");
			int sidx=rs.getInt("sidx");
			String stds=rs.getString("stds");
			String s_gr_name=rs.getString("s_gr_name");
			String sdate=rs.getString("sdate");
			String edate=rs.getString("edate");
			String sch_date=rs.getString("sch_date");
			String sch_time=rs.getString("sch_time");
			int stdgr_status=rs.getInt("stdgr_status");
			String scontent=rs.getString("scontent");
			String tutorname=rs.getString("tutorname");
			int std_limit=rs.getInt("std_limit");
			int toeic_limit=rs.getInt("toeic_limit");
	        int toss_limit=rs.getInt("toss_limit");
	        int toefl_limit=rs.getInt("toefl_limit");
			Study_grDTO dto = new Study_grDTO(midx, sidx, stds, s_gr_name, sdate, edate, sch_date, sch_time, stdgr_status, scontent, tutorname, std_limit);
			return dto;
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
	//KS
	   /**스터디 그룹 신청 내용 등록*/
	   public int joinStudyGr(Study_grDTO dto) {
		   try {
			   conn=semi.db.SemiDB.getCon();
			   String sql="insert into study_gr values(?,study_gr_sidx.nextval,0,?,?,?,?,?,0,?,?,?)";
			   ps=conn.prepareStatement(sql);
			   ps.setInt(1, dto.getMidx());
			   ps.setString(2, dto.getS_gr_name());
			   ps.setString(3, dto.getSdate());
			   ps.setString(4, dto.getEdate());
			   ps.setString(5, dto.getSch_date());
			   ps.setString(6, dto.getSch_time());
			   ps.setString(7, dto.getScontent());
			   ps.setString(8, dto.getTutorname());
			   ps.setInt(9, dto.getStd_limit());
			   return ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(rs!=null)rs.close();
	            if(ps!=null)ps.close();
	            } catch (Exception e2) {
	            }
		}
	   }
}
