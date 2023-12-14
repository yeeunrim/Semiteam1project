package board3;

import java.io.Serializable;
import java.sql.Timestamp;

public class Reply3 implements Serializable {

	private static final long serialVersionUID = 33L;
	
	private int rno3;
	private int bno3;
	private String rcontent3;
	private String replyer3;
	private Timestamp rdate3;
	private Timestamp rupdate3;
	public int getRno3() {
		return rno3;
	}
	public void setRno3(int rno3) {
		this.rno3 = rno3;
	}
	public int getBno3() {
		return bno3;
	}
	public void setBno3(int bno3) {
		this.bno3 = bno3;
	}
	public String getRcontent3() {
		return rcontent3;
	}
	public void setRcontent3(String rcontent3) {
		this.rcontent3 = rcontent3;
	}
	public String getReplyer3() {
		return replyer3;
	}
	public void setReplyer3(String replyer3) {
		this.replyer3 = replyer3;
	}
	public Timestamp getRdate3() {
		return rdate3;
	}
	public void setRdate3(Timestamp rdate3) {
		this.rdate3 = rdate3;
	}
	public Timestamp getRupdate3() {
		return rupdate3;
	}
	public void setRupdate3(Timestamp rupdate3) {
		this.rupdate3 = rupdate3;
	}
	
	
}
