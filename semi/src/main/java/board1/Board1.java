package board1;

import java.io.Serializable;
import java.sql.Timestamp;

public class Board1 implements Serializable{

	private static final long serialVersionUID = 12L;
	
	private int bno1;
	private String title1;
	private String content1;
	private Timestamp createDate1;
	private Timestamp modifyDate1;
	private int hit1;
	private String filename1;
	private String id;
	private int reply_count1;
	private int like_count1;
	
	public int getBno1() {
		return bno1;
	}
	public void setBno1(int bno1) {
		this.bno1 = bno1;
	}
	public String getTitle1() {
		return title1;
	}
	public void setTitle1(String title1) {
		this.title1 = title1;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public Timestamp getCreateDate1() {
		return createDate1;
	}
	public void setCreateDate1(Timestamp createDate1) {
		this.createDate1 = createDate1;
	}
	public Timestamp getModifyDate1() {
		return modifyDate1;
	}
	public void setModifyDate1(Timestamp modifyDate1) {
		this.modifyDate1 = modifyDate1;
	}
	public int getHit1() {
		return hit1;
	}
	public void setHit1(int hit1) {
		this.hit1 = hit1;
	}
	public String getFilename1() {
		return filename1;
	}
	public void setFilename1(String filename1) {
		this.filename1 = filename1;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getReply_count1() {
		return reply_count1;
	}
	public void setReply_count1(int reply_count1) {
		this.reply_count1 = reply_count1;
	}
	public int getLike_count1() {
		return like_count1;
	}
	public void setLike_count1(int like_count1) {
		this.like_count1 = like_count1;
	}
	
}	