package board2;

import java.io.Serializable;
import java.sql.Timestamp;

public class Reply2 implements Serializable {

	private static final long serialVersionUID = 23L;
	
	private int rno2;
	private int bno2;
	private String rcontent2;
	private String replyer2;
	private Timestamp rdate2;
	private Timestamp rupdate2;
	public int getRno2() {
		return rno2;
	}
	public void setRno2(int rno2) {
		this.rno2 = rno2;
	}
	public int getBno2() {
		return bno2;
	}
	public void setBno2(int bno2) {
		this.bno2 = bno2;
	}
	public String getRcontent2() {
		return rcontent2;
	}
	public void setRcontent2(String rcontent2) {
		this.rcontent2 = rcontent2;
	}
	public String getReplyer2() {
		return replyer2;
	}
	public void setReplyer2(String replyer2) {
		this.replyer2 = replyer2;
	}
	public Timestamp getRdate2() {
		return rdate2;
	}
	public void setRdate2(Timestamp rdate2) {
		this.rdate2 = rdate2;
	}
	public Timestamp getRupdate2() {
		return rupdate2;
	}
	public void setRupdate2(Timestamp rupdate2) {
		this.rupdate2 = rupdate2;
	}
	
	
}
