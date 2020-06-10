package semi.tutor;

import java.sql.*;
import java.util.*;
import semi.meminfo.*;
public class TutorDAO {
   
   Connection conn;
   PreparedStatement ps; 
   ResultSet rs; 
   
   public TutorDAO() {
      
   }
   //하이
   /**Ʃ�� ����Ʈ �޾ƿ���*/
   //yong
   public ArrayList<TutorDTO> tutorList(String addr){
	      try {
	         conn = semi.db.SemiDB.getCon();
	         String sql = "select * from tutor where tshots>0 ";
	         
	         if(addr.equals("��ü����")||addr.equals("")) {
	            ps = conn.prepareStatement(sql);
	         }else {
	            sql+=" and maddr=?";
	            ps = conn.prepareStatement(sql);
	            ps.setString(1, addr);
	         }
	         rs = ps.executeQuery();
	         ArrayList<TutorDTO> arr = new ArrayList<TutorDTO>();
	         while(rs.next()) {
	            int midx  = rs.getInt("midx"); 
	            String mname = rs.getString("mname");
	            String maddr = rs.getString("maddr"); 
	            int tshots = rs.getInt("tshots");
	            int toeic = rs.getInt("toeic");
	            int toss = rs.getInt("toss");
	            int toefl = rs.getInt("toefl");
	            int tgrant = rs.getInt("tgrant");
	            
	            TutorDTO dto = new TutorDTO(midx, mname, maddr, tshots, toeic, toss, toefl, tgrant);
	            arr.add(dto);
	         }
	         
	         return arr; 
	      }catch(Exception e) {
	         e.printStackTrace();
	         return null; 
	      }finally {
	         try {
	            if(rs!=null) rs.close();
	            if(ps!=null) ps.close();
	            if(conn!=null) conn.close();
	         }catch(Exception e) {
	            
	         }
	      }
	   }
   public TutorDTO tutorInfo(int midx) {
		try {
			conn=semi.db.SemiDB.getCon();
			String sql="select * from tutor where midx=?";
			ps=conn.prepareStatement(sql); 
			ps.setInt(1, midx);
			rs=ps.executeQuery();
			TutorDTO dto=null;
			if(rs.next()) {
				

				String mname=rs.getString("mname");
				String maddr=rs.getString("maddr");
				int toeic=rs.getInt("toeic");
				int toss=rs.getInt("toss");
				int toefl=rs.getInt("toefl");
				
				dto=new TutorDTO(mname, maddr, toeic, toss, toefl);
			}
			return dto;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("���� 1");
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
   		}
   /**Ʃ�� ���� yong*/
   public int tutorJoin(MemInfoDTO dto,String addr) {
      try {
         conn = semi.db.SemiDB.getCon(); 
         String sql ="insert into tutor values(?,?,?,0,?,?,?,0)";
         ps = conn.prepareStatement(sql);
         ps.setInt(1, dto.getMidx());
         ps.setString(2, dto.getMname());
         ps.setString(3, addr);
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
            if(ps!=null) ps.close();
            if(conn!=null)conn.close();
         }catch(Exception e2) {}
      }
   }
   }