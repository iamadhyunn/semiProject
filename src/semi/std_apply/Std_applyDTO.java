package semi.std_apply;

import java.sql.Date;

public class Std_applyDTO {
   
   private int sidx; 
   private int midx; 
   private String mname; 
   private int mage; 
   private Date adate; 
   private String asubject; 
   private String acontent; 
   private int astate;
   
   public Std_applyDTO() {
      super();
   }

   public Std_applyDTO(int sidx, int midx, String mname, int mage, Date adate, String asubject, String acontent,
         int astate) {
      super();
      this.sidx = sidx;
      this.midx = midx;
      this.mname = mname;
      this.mage = mage;
      this.adate = adate;
      this.asubject = asubject;
      this.acontent = acontent;
      this.astate = astate;
   }

   public int getSidx() {
      return sidx;
   }

   public void setSidx(int sidx) {
      this.sidx = sidx;
   }

   public int getMidx() {
      return midx;
   }

   public void setMidx(int midx) {
      this.midx = midx;
   }

   public String getMname() {
      return mname;
   }

   public void setMname(String mname) {
      this.mname = mname;
   }

   public int getMage() {
      return mage;
   }

   public void setMage(int mage) {
      this.mage = mage;
   }

   public Date getAdate() {
      return adate;
   }

   public void setAdate(Date adate) {
      this.adate = adate;
   }

   public String getAsubject() {
      return asubject;
   }

   public void setAsubject(String asubject) {
      this.asubject = asubject;
   }

   public String getAcontent() {
      return acontent;
   }

   public void setAcontent(String acontent) {
      this.acontent = acontent;
   }

   public int getAstate() {
      return astate;
   }

   public void setAstate(int astate) {
      this.astate = astate;
   } 
   
   
   
}