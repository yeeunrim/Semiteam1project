package board2;

import java.io.Serializable;
import java.sql.Timestamp;

public class Board2 implements Serializable{

	private static final long serialVersionUID = 22L;
	
	private int bno2;
	private String title2;
	private String content2;
	private Timestamp createDate2;
	private Timestamp modifyDate2;
	private int hit2;
	private String filename2;
	private String id;
	private int reply_count2;
	private int like_count2;
	
	public int getBno2() {
		return bno2;
	}
	public void setBno2(int bno2) {
		this.bno2 = bno2;
	}
	public String getTitle2() {
		return title2;
	}
	public void setTitle2(String title2) {
		this.title2 = title2;
	}
	public String getContent2() {
		return content2;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public Timestamp getCreateDate2() {
		return createDate2;
	}
	public void setCreateDate2(Timestamp createDate2) {
		this.createDate2 = createDate2;
	}
	public Timestamp getModifyDate2() {
		return modifyDate2;
	}
	public void setModifyDate2(Timestamp modifyDate2) {
		this.modifyDate2 = modifyDate2;
	}
	public int getHit2() {
		return hit2;
	}
	public void setHit2(int hit2) {
		this.hit2 = hit2;
	}
	public String getFilename2() {
		return filename2;
	}
	public void setFilename2(String filename2) {
		this.filename2 = filename2;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getReply_count2() {
		return reply_count2;
	}
	public void setReply_count2(int reply_count2) {
		this.reply_count2 = reply_count2;
	}
	public int getLike_count2() {
		return like_count2;
	}
	public void setLike_count2(int like_count2) {
		this.like_count2 = like_count2;
	}
	
}	