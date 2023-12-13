package blike;

import java.io.Serializable;

public class Blike  implements Serializable{

	private static final long serialVersionUID = 9L;
	
	private int likeno;
	private int bno;
	private String id;
	
	public int getLikeno() {
		return likeno;
	}
	public void setLikeno(int likeno) {
		this.likeno = likeno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	
}
