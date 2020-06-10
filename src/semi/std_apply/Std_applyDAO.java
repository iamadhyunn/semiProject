package semi.std_apply;

import java.sql.*;
import java.util.*;

import semi.study_gr.Study_grDTO;

public class Std_applyDAO {
   
   Connection conn; 
   PreparedStatement ps; 
   ResultSet rs; 
   
   public Std_applyDAO() {
      
   }
   
   
   /**스터디 신청서리스트 관련 메서드*/   
   public ArrayList<Std_applyDTO> applyList(int sidx) {
      try {
         conn = semi.db.SemiDB.getCon(); 
         String sql = "select * from std_apply where sidx=?"; 
         ps = conn.prepareStatement(sql); 
         ps.setInt(1, sidx);
         rs = ps.executeQuery();
         ArrayList<Std_applyDTO> arr = new ArrayList<Std_applyDTO>();
         while(rs.next()) {
            int midx = rs.getInt("midx"); 
            String mname = rs.getString("mname"); 
            int mage = rs.getInt("mage"); 
            java.sql.Date adate = rs.getDate("adate");
            String asubject = rs.getString("asubject");
            String acontent = rs.getString("acontent"); 
            int astate = rs.getInt("astate"); 
            
            Std_applyDTO dto = new Std_applyDTO(sidx, midx, mname, mage, adate, asubject, acontent, astate);
            arr.add(dto);                
         }
         return arr; 
      }catch(Exception e) {
         e.printStackTrace();
         return null; 
      }finally {
         try {
            if(rs!=null)rs.close();
            if(ps!=null)ps.close();
            if(conn!=null)conn.close();
         }catch(Exception e2) {
         
         }
      }
   }
   /**일반회원 스터디 가입 신청 내역 등록*/
   public int joinStudy(Std_applyDTO dto) {
	   try {
		   conn=semi.db.SemiDB.getCon();
		   String sql="insert into std_apply values(?,?,?,?,sysdate,?,?,0)";
		   ps=conn.prepareStatement(sql);
		   ps.setInt(1, dto.getSidx());
		   ps.setInt(2, dto.getMidx());
		   ps.setString(3, dto.getMname());
		   ps.setInt(4, dto.getMage());
		   ps.setString(5, dto.getAsubject());
		   ps.setString(6, dto.getAcontent());
		   
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
      /**스터디 신청서 보기 관련 메서드 park*/
         public Std_applyDTO ApplyInfo(int midx,int sidx) {
            try {
            conn=semi.db.SemiDB.getCon();
            
            String sql="select * from std_apply where midx=? and sidx=?";
            ps=conn.prepareStatement(sql);
            ps.setInt(1, midx);
            ps.setInt(2, sidx);
            rs=ps.executeQuery();
            
            Std_applyDTO dto=null;
            
            if(rs.next()) {
               String mname=rs.getString("mname");
               int mage=rs.getInt("mage");
               System.out.println("dd");
               java.sql.Date adate=rs.getDate("adate");
               String asubject=rs.getString("asubject");
               String acontent=rs.getString("acontent");
               int astate=rs.getInt("astate");
               System.out.println("testerror1");
               
               dto=new Std_applyDTO(sidx, midx, mname, mage, adate, asubject, acontent, astate);
            }
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
         
       //튜터가 학생 신청을 승인했을때
         public int okStd(int midx) {
            try {
            conn=semi.db.SemiDB.getCon();
            
            String sql="update std_apply set astate=1 where midx=?";
            ps=conn.prepareStatement(sql);
            ps.setInt(1, midx);
            int count=ps.executeUpdate();
            
            return count;
         } catch (Exception e) {
            e.printStackTrace();
            return -1;
         }finally {
            try {
               if(ps!=null)ps.close();
                  if(conn!=null)conn.close();
            } catch (Exception e2) {}
         }
         }
         
         //튜터가 학생 신청을 거절했을때
         public int nagativeStd(int midx) {
            try {
            conn=semi.db.SemiDB.getCon();
            
            String sql="delete from std_apply where midx=?";
            ps=conn.prepareStatement(sql);
            ps.setInt(1, midx);
            int count=ps.executeUpdate();
            
            return count;
         } catch (Exception e) {
            e.printStackTrace();
            return -1;
         }finally {
            try {
               if(ps!=null)ps.close();
                  if(conn!=null)conn.close();
            } catch (Exception e2) {}
         }
         }
   }
