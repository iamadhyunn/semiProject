package semi.meminfo;

import java.sql.Date;

public class MemInfoDTO {

	private int midx;
	private String mname;
	private String mid;
	private String mpwd;
	private String memail;
	private int mage;
	private int msex;
	private String maddr;
	private String mtel;
	private int mtype;
	private Date mjoindate;
	private String mdob;
	private int toeic;
	private int toss;
	private int toefl;
	
	public MemInfoDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public MemInfoDTO(int midx, String mname, String mid, String mpwd, String memail, int mage, int msex, String maddr,
			String mtel, int mtype, Date mjoindate, String mdob, int toeic, int toss, int toefl) {
		super();
		this.midx = midx;
		this.mname = mname;
		this.mid = mid;
		this.mpwd = mpwd;
		this.memail = memail;
		this.mage = mage;
		this.msex = msex;
		this.maddr = maddr;
		this.mtel = mtel;
		this.mtype = mtype;
		this.mjoindate = mjoindate;
		this.mdob = mdob;
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

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpwd() {
		return mpwd;
	}

	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public int getMage() {
		return mage;
	}

	public void setMage(int mage) {
		this.mage = mage;
	}

	public int getMsex() {
		return msex;
	}

	public void setMsex(int msex) {
		this.msex = msex;
	}

	public String getMaddr() {
		return maddr;
	}

	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}

	public String getMtel() {
		return mtel;
	}

	public void setMtel(String mtel) {
		this.mtel = mtel;
	}

	public int getMtype() {
		return mtype;
	}

	public void setMtype(int mtype) {
		this.mtype = mtype;
	}

	public Date getMjoindate() {
		return mjoindate;
	}

	public void setMjoindate(Date mjoindate) {
		this.mjoindate = mjoindate;
	}

	public String getMdob() {
		return mdob;
	}

	public void setMdob(String mdob) {
		this.mdob = mdob;
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
	
	
}
