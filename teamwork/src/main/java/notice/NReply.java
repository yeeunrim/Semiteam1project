package notice;

import java.io.Serializable;
import java.sql.Timestamp;

public class NReply implements Serializable {

	private static final long serialVersionUID = 13L;
	
	private int nrno;
	private int nno;
	private String nrcontent;
	private String nreplyer;
	private Timestamp nrdate;
	private Timestamp nrupdate;
	
	public int getNrno() {
		return nrno;
	}
	public void setNrno(int nrno) {
		this.nrno = nrno;
	}
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public String getNrcontent() {
		return nrcontent;
	}
	public void setNrcontent(String nrcontent) {
		this.nrcontent = nrcontent;
	}
	public String getNreplyer() {
		return nreplyer;
	}
	public void setNreplyer(String nreplyer) {
		this.nreplyer = nreplyer;
	}
	public Timestamp getNrdate() {
		return nrdate;
	}
	public void setNrdate(Timestamp nrdate) {
		this.nrdate = nrdate;
	}
	public Timestamp getNrupdate() {
		return nrupdate;
	}
	public void setNrupdate(Timestamp nrupdate) {
		this.nrupdate = nrupdate;
	}

}