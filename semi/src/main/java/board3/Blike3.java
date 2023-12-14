package board3;

import java.io.Serializable;

public class Blike3  implements Serializable{

	private static final long serialVersionUID = 9L;
	
	private int likeno3;
	private int bno3;
	private String id;
	
	public int getLikeno3() {
		return likeno3;
	}
	public void setLikeno3(int likeno3) {
		this.likeno3 = likeno3;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBno3() {
		return bno3;
	}
	public void setBno3(int bno3) {
		this.bno3 = bno3;
	}
	
}
