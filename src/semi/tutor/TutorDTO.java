package semi.tutor;


public class TutorDTO {
   
   private int midx; 
   private String mname;
   private String maddr;
   private int tshots;
   private int toeic;
   private int toss;
   private int toefl;
   private int tgrant;
   
   public TutorDTO() {
      super();
   }

   public TutorDTO(int midx, String mname, String maddr, int tshots, int toeic, int toss, int toefl, int tgrant) {
      super();
      this.midx = midx;
      this.mname = mname;
      this.maddr = maddr;
      this.tshots = tshots;
      this.toeic = toeic;
      this.toss = toss;
      this.toefl = toefl;
      this.tgrant = tgrant;
   }
   public TutorDTO(String mname, String maddr, int toeic, int toss, int toefl) {
		super();
		this.mname = mname;
		this.maddr = maddr;
		this.toeic = toeic;
		this.toss = toss;
		this.toefl = toefl;
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

   public String getMaddr() {
      return maddr;
   }

   public void setMaddr(String maddr) {
      this.maddr = maddr;
   }

   public int getTshots() {
      return tshots;
   }

   public void setTshots(int tshots) {
      this.tshots = tshots;
   }

   public int getToeic() {
      return toeic;
   }

   public void setToeic(int toeic) {
      this.toeic = toeic;
   }

   public int getToss() {
      return toss;
   }

   public void setToss(int toss) {
      this.toss = toss;
   }

   public int getToefl() {
      return toefl;
   }

   public void setToefl(int toefl) {
      this.toefl = toefl;
   }

   public int getTgrant() {
      return tgrant;
   }

   public void setTgrant(int tgrant) {
      this.tgrant = tgrant;
   }
   
   
   
   
   
   
}