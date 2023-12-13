package member;

import java.io.Serializable;
import java.sql.Timestamp;

public class Member implements Serializable{

	private static final long serialVersionUID = 11L;
	
	private int mno;				//회원 번호
	private String id;				//회원 아이디
	private String passwd;			//비밀번호
	private String name;			//성명
	private String email;			//이메일
	private String gender;			//성별
	private Timestamp joindate;		//가입일
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getJoinDate() {
		return joindate;
	}
	public void setJoinDate(Timestamp joindate) {
		this.joindate = joindate;
	}

}
