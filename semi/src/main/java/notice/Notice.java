package notice;

import java.io.Serializable;
import java.sql.Timestamp;

public class Notice implements Serializable{

	private static final long serialVersionUID = 12L;
	
	private int nno;
	private String ntitle;
	private String ncontent;
	private Timestamp ncreateDate;
	private Timestamp nmodifyDate;
	private int nhit;
	private String nfilename;
	private String id;
	private int nreply_count;
	private int nlike_count;
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public Timestamp getNcreateDate() {
		return ncreateDate;
	}
	public void setNcreateDate(Timestamp ncreateDate) {
		this.ncreateDate = ncreateDate;
	}
	public Timestamp getNmodifyDate() {
		return nmodifyDate;
	}
	public void setNmodifyDate(Timestamp nmodifyDate) {
		this.nmodifyDate = nmodifyDate;
	}
	public int getNhit() {
		return nhit;
	}
	public void setNhit(int nhit) {
		this.nhit = nhit;
	}
	public String getNfilename() {
		return nfilename;
	}
	public void setNfilename(String nfilename) {
		this.nfilename = nfilename;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getNreply_count() {
		return nreply_count;
	}
	public void setNreply_count(int nreply_count) {
		this.nreply_count = nreply_count;
	}
	public int getNlike_count() {
		return nlike_count;
	}
	public void setNlike_count(int nlike_count) {
		this.nlike_count = nlike_count;
	}
	
	
	
}
