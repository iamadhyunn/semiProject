
package semi.i_board;

import java.sql.Date;

public class I_BoardDTO {
   private int ib_num;
   private int midx;
   private String ib_sub;    
   private String ib_writer;
   private Date ib_writedate;
   private int ib_readnum;
   private String ib_content;
   private int ib_ref;
   private int ib_lev;
   private int ib_sunbun;

   public I_BoardDTO() {
      super();
   }
   public I_BoardDTO(int ib_num, int midx, String ib_sub, String ib_writer, Date ib_writedate, int ib_readnum,
         String ib_content, int ib_ref, int ib_lev, int ib_sunbun) {
      super();
      this.ib_num = ib_num;
      this.midx = midx;
      this.ib_sub = ib_sub;
      this.ib_writer = ib_writer;
      this.ib_writedate = ib_writedate;
      this.ib_readnum = ib_readnum;
      this.ib_content = ib_content;
      this.ib_ref = ib_ref;
      this.ib_lev = ib_lev;
      this.ib_sunbun = ib_sunbun;
   }
   public int getIb_num() {
      return ib_num;
   }

   public void setIb_num(int ib_num) {
      this.ib_num = ib_num;
   }

   public int getMidx() {
      return midx;
   }

   public void setMidx(int midx) {
      this.midx = midx;
   }

   public String getIb_sub() {
      return ib_sub;
   }

   public void setIb_sub(String ib_sub) {
      this.ib_sub = ib_sub;
   }

   public String getIb_writer() {
      return ib_writer;
   }

   public void setIb_writer(String ib_writer) {
      this.ib_writer = ib_writer;
   }

   public Date getIb_writedate() {
      return ib_writedate;
   }

   public void setIb_writedate(Date ib_writedate) {
      this.ib_writedate = ib_writedate;
   }

   public int getIb_readnum() {
      return ib_readnum;
   }

   public void setIb_readnum(int ib_readnum) {
      this.ib_readnum = ib_readnum;
   }

   public String getIb_content() {
      return ib_content;
   }

   public void setIb_content(String ib_content) {
      this.ib_content = ib_content;
   }

   public int getIb_ref() {
      return ib_ref;
   }

   public void setIb_ref(int ib_ref) {
      this.ib_ref = ib_ref;
   }

   public int getIb_lev() {
      return ib_lev;
   }

   public void setIb_lev(int ib_lev) {
      this.ib_lev = ib_lev;
   }

   public int getIb_sunbun() {
      return ib_sunbun;
   }

   public void setIb_sunbun(int ib_sunbun) {
      this.ib_sunbun = ib_sunbun;
   }


   

   




   
}