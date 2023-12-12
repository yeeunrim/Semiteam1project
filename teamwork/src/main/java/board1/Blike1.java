package board1;

import java.io.Serializable;

public class Blike1  implements Serializable{

	private static final long serialVersionUID = 9L;
	
	private int likeno1;
	private int bno1;
	private String id;
	
	public int getLikeno1() {
		return likeno1;
	}
	public void setLikeno1(int likeno1) {
		this.likeno1 = likeno1;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBno1() {
		return bno1;
	}
	public void setBno1(int bno1) {
		this.bno1 = bno1;
	}
	
}
