package board1;

import java.io.Serializable;
import java.sql.Timestamp;

public class Reply1 implements Serializable {

	private static final long serialVersionUID = 13L;
	
	private int rno1;
	private int bno1;
	private String rcontent1;
	private String replyer1;
	private Timestamp rdate1;
	private Timestamp rupdate1;
	public int getRno1() {
		return rno1;
	}
	public void setRno1(int rno1) {
		this.rno1 = rno1;
	}
	public int getBno1() {
		return bno1;
	}
	public void setBno1(int bno1) {
		this.bno1 = bno1;
	}
	public String getRcontent1() {
		return rcontent1;
	}
	public void setRcontent1(String rcontent1) {
		this.rcontent1 = rcontent1;
	}
	public String getReplyer1() {
		return replyer1;
	}
	public void setReplyer1(String replyer1) {
		this.replyer1 = replyer1;
	}
	public Timestamp getRdate1() {
		return rdate1;
	}
	public void setRdate1(Timestamp rdate1) {
		this.rdate1 = rdate1;
	}
	public Timestamp getRupdate1() {
		return rupdate1;
	}
	public void setRupdate1(Timestamp rupdate1) {
		this.rupdate1 = rupdate1;
	}
	
	
}
