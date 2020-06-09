package semi.study_gr;

public class Study_grDTO {
   private int midx;
   private int sidx;
   private String stds;
   private String s_gr_name;
   private String sdate;
   private String edate;
   private String sch_date;
   private String sch_time;
   private int stdgr_status;
   private String scontent;
   private String tutorname;   
   private int std_limit;
   
   
   public Study_grDTO() {
      // TODO Auto-generated constructor stub
   }


   public Study_grDTO(int midx, int sidx, String stds, String s_gr_name, String sdate, String edate, String sch_date,
         String sch_time, int stdgr_status, String scontent, String tutorname, int std_limit) {
      super();
      this.midx = midx;
      this.sidx = sidx;
      this.stds = stds;
      this.s_gr_name = s_gr_name;
      this.sdate = sdate;
      this.edate = edate;
      this.sch_date = sch_date;
      this.sch_time = sch_time;
      this.stdgr_status = stdgr_status;
      this.scontent = scontent;
      this.tutorname = tutorname;
      this.std_limit = std_limit;
   }
   
   
   public int getMidx() {
      return midx;
   }
   
   
   public void setMidx(int midx) {
      this.midx = midx;
   }
   
   
   public int getSidx() {
      return sidx;
   }
   
   
   public void setSidx(int sidx) {
      this.sidx = sidx;
   }
   
   
   public String getStds() {
      return stds;
   }
   
   
   public void setStds(String stds) {
      this.stds = stds;
   }
   
   
   public String getS_gr_name() {
      return s_gr_name;
   }
   
   
   public void setS_gr_name(String s_gr_name) {
      this.s_gr_name = s_gr_name;
   }
   
   
   public String getSdate() {
      return sdate;
   }
   
   
   public void setSdate(String sdate) {
      this.sdate = sdate;
   }
   
   
   public String getEdate() {
      return edate;
   }
   
   
   public void setEdate(String edate) {
      this.edate = edate;
   }
   
   
   public String getSch_date() {
      return sch_date;
   }
   
   
   public void setSch_date(String sch_date) {
      this.sch_date = sch_date;
   }
   
   
   public String getSch_time() {
      return sch_time;
   }
   
   
   public void setSch_time(String sch_time) {
      this.sch_time = sch_time;
   }
   
   
   public int getStdgr_status() {
      return stdgr_status;
   }
   
   
   public void setStdgr_status(int stdgr_status) {
      this.stdgr_status = stdgr_status;
   }
   
   
   public String getScontent() {
      return scontent;
   }
   
   
   public void setScontent(String scontent) {
      this.scontent = scontent;
   }
   
   
   public String getTutorname() {
      return tutorname;
   }
   
   
   public void setTutorname(String tutorname) {
      this.tutorname = tutorname;
   }
   
   
   public int getStd_limit() {
      return std_limit;
   }
   
   
   public void setStd_limit(int std_limit) {
      this.std_limit = std_limit;
   }

        
}