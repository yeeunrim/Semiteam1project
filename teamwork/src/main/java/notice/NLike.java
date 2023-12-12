package notice;

import java.io.Serializable;

public class NLike  implements Serializable{

	private static final long serialVersionUID = 9L;
	
	private int nlikeno;
	private int nno;
	private String id;
	
	public int getNlikeno() {
		return nlikeno;
	}
	public void setNlikeno(int nlikeno) {
		this.nlikeno = nlikeno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	
}
