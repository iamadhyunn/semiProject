package semi.s_board;

import java.sql.Date;

public class S_BoardDTO {
   
   private int sidx;
   private int sb_num;
   private String sb_sub;
   private String sb_writer;
   private Date sb_writedate;
   private int sb_readnum;
   private String sb_content;
   private int sb_ref;
   private int sb_lev;
   private int sb_sunbun;
   
   public S_BoardDTO() {
   }

   public S_BoardDTO(int sidx, int sb_num, String sb_sub, String sb_writer, Date sb_writedate, int sb_readnum,
         String sb_content, int sb_ref, int sb_lev, int sb_sunbun) {
      super();
      this.sidx = sidx;
      this.sb_num = sb_num;
      this.sb_sub = sb_sub;
      this.sb_writer = sb_writer;
      this.sb_writedate = sb_writedate;
      this.sb_readnum = sb_readnum;
      this.sb_content = sb_content;
      this.sb_ref = sb_ref;
      this.sb_lev = sb_lev;
      this.sb_sunbun = sb_sunbun;
   }

   public int getSidx() {
      return sidx;
   }

   public void setSidx(int sidx) {
      this.sidx = sidx;
   }

   public int getSb_num() {
      return sb_num;
   }

   public void setSb_num(int sb_num) {
      this.sb_num = sb_num;
   }

   public String getSb_sub() {
      return sb_sub;
   }

   public void setSb_sub(String sb_sub) {
      this.sb_sub = sb_sub;
   }

   public String getSb_writer() {
      return sb_writer;
   }

   public void setSb_writer(String sb_writer) {
      this.sb_writer = sb_writer;
   }

   public Date getSb_writedate() {
      return sb_writedate;
   }

   public void setSb_writedate(Date sb_writedate) {
      this.sb_writedate = sb_writedate;
   }

   public int getSb_readnum() {
      return sb_readnum;
   }

   public void setSb_readnum(int sb_readnum) {
      this.sb_readnum = sb_readnum;
   }

   public String getSb_content() {
      return sb_content;
   }

   public void setSb_content(String sb_content) {
      this.sb_content = sb_content;
   }

   public int getSb_ref() {
      return sb_ref;
   }

   public void setSb_ref(int sb_ref) {
      this.sb_ref = sb_ref;
   }

   public int getSb_lev() {
      return sb_lev;
   }

   public void setSb_lev(int sb_lev) {
      this.sb_lev = sb_lev;
   }

   public int getSb_sunbun() {
      return sb_sunbun;
   }

   public void setSb_sunbun(int sb_sunbun) {
      this.sb_sunbun = sb_sunbun;
   }
   
}