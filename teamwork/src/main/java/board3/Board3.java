package board3;

import java.io.Serializable;
import java.sql.Timestamp;

public class Board3 implements Serializable{

	private static final long serialVersionUID = 33L;
	
	private int bno3;
	private String title3;
	private String content3;
	private Timestamp createDate3;
	private Timestamp modifyDate3;
	private int hit3;
	private String filename3;
	private String id;
	private int reply_count3;
	private int like_count3;
	
	public int getBno3() {
		return bno3;
	}
	public void setBno3(int bno3) {
		this.bno3 = bno3;
	}
	public String getTitle3() {
		return title3;
	}
	public void setTitle3(String title3) {
		this.title3 = title3;
	}
	public String getContent3() {
		return content3;
	}
	public void setContent3(String content3) {
		this.content3 = content3;
	}
	public Timestamp getCreateDate3() {
		return createDate3;
	}
	public void setCreateDate3(Timestamp createDate3) {
		this.createDate3 = createDate3;
	}
	public Timestamp getModifyDate3() {
		return modifyDate3;
	}
	public void setModifyDate3(Timestamp modifyDate3) {
		this.modifyDate3 = modifyDate3;
	}
	public int getHit3() {
		return hit3;
	}
	public void setHit3(int hit3) {
		this.hit3 = hit3;
	}
	public String getFilename3() {
		return filename3;
	}
	public void setFilename3(String filename3) {
		this.filename3 = filename3;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getReply_count3() {
		return reply_count3;
	}
	public void setReply_count3(int reply_count3) {
		this.reply_count3 = reply_count3;
	}
	public int getLike_count3() {
		return like_count3;
	}
	public void setLike_count3(int like_count3) {
		this.like_count3 = like_count3;
	}
	
}	