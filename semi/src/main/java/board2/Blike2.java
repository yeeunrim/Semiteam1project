package board2;

import java.io.Serializable;

public class Blike2  implements Serializable{

	private static final long serialVersionUID = 9L;
	
	private int likeno2;
	private int bno2;
	private String id;
	
	public int getLikeno2() {
		return likeno2;
	}
	public void setLikeno2(int likeno2) {
		this.likeno2 = likeno2;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBno2() {
		return bno2;
	}
	public void setBno2(int bno2) {
		this.bno2 = bno2;
	}
	
}
