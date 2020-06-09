//이현진//
package semi.i_board;

import java.sql.*;
import java.util.*;

import semi.db.*;
public class I_BoardDAO<BbsDTO> {
   private Connection conn;
   private PreparedStatement ps;
   private ResultSet rs;
   
   public I_BoardDAO() {
      // TODO Auto-generated constructor stub
   }
   
   /**글쓰기 관련메서드*/
   public int bbsWrite(I_BoardDTO dto) {
      try {
         conn=semi.db.SemiDB.getCon();
         String sql="insert into i_board values(i_board_ib_num.nextval,0,?,?,sysdate,0,?,0,0,0) ";
         ps=conn.prepareStatement(sql);
         //1번 0 :midx 가져와야됨
         //2번 0 :게시물번호 ib_num <-- 어떻게구현해야할지모르겠음 
         ps.setString(1, dto.getIb_sub());
         ps.setString(2, dto.getIb_writer());
         //조회수
         ps.setString(3, dto.getIb_content());
         //REF
         //LEV
         //SUNBUN
         int count=ps.executeUpdate();
         return count;
      } catch (Exception e) {
         e.printStackTrace();
         return -1;
         // TODO: handle exception
      }finally {
         try {
            if(ps!=null)ps.close();
            if(conn!=null)conn.close();
         } catch (Exception e2) {
            // TODO: handle exception
         }
      }
   }
   
   /**총 게시물수 관련 메서드*/
   public int getTotalCnt() {
      try {
    	  
         conn=semi.db.SemiDB.getCon();
         String sql="select count(*) from i_board";
         ps=conn.prepareStatement(sql);
         rs=ps.executeQuery();
         rs.next();
         int count=rs.getInt(1);
         return count==0?1:count;
      
      }catch (Exception e) {
         // TODO: handle exception
         e.printStackTrace();
         return 1;
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
   
   /**목록관련 메서드*/
   public ArrayList<I_BoardDTO> I_BoardList(int cp,int ls){
      try {
         conn=semi.db.SemiDB.getCon();
         //String sql="select * from jsp_bbs order by idx desc";
         String sql="select * from " + 
               "(select rownum as rnum,a.* from " + 
               "(select * from i_board order by ib_num desc) a)b " + 
               "where rnum>=? and rnum<=?";
         int start=((cp-1)*ls)+1;
         int end=cp*ls;
         ps=conn.prepareStatement(sql);
         ps.setInt(1, start);
         ps.setInt(2, end);
         rs=ps.executeQuery();
         ArrayList<I_BoardDTO> arr= new ArrayList<I_BoardDTO>() ;
         while(rs.next()) {
            int ib_num=rs.getInt("ib_num");
            int midx=rs.getInt("midx");
            String ib_sub=rs.getString("ib_sub");
            String ib_writer=rs.getString("ib_writer");
            java.sql.Date ib_writedate=rs.getDate("ib_writedate");
            int ib_readnum=rs.getInt("ib_readnum");
            String ib_content=rs.getString("ib_content");
            int ib_ref=rs.getInt("ib_ref");
            int ib_lev=rs.getInt("ib_lev");
            int ib_sunbun =rs.getInt("ib_sunbun");
            I_BoardDTO dto=new I_BoardDTO(ib_num, midx, ib_sub, ib_writer, ib_writedate, ib_readnum, ib_content, ib_ref, ib_lev, ib_sunbun);
            arr.add(dto);
         
         }
         return arr;
      } catch (Exception e) {
         // TODO: handle exception
         e.printStackTrace();
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
}