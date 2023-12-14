package users;

import java.io.Serializable;
import java.sql.Timestamp;

public class Users implements Serializable{
	private static final long serialVersionUID = 8L;

	private String id;			//회원 닉네임
	private String email;		//회원 이메일
	private String pw;			//비밀번호
	private String tel;			//전화번호
	private int birth;			//생일
	private String gender;			//성별
	private Timestamp accountDay;		//가입일
	private Timestamp modifiedDay;		//수정일
	private String introduction;		//소개글
	private String image;		//프로필사진
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getAccountDay() {
		return accountDay;
	}
	public void setAccountDay(Timestamp accountDay) {
		this.accountDay = accountDay;
	}
	public Timestamp getModifiedDay() {
		return modifiedDay;
	}
	public void setModifiedDay(Timestamp modifiedDay) {
		this.modifiedDay = modifiedDay;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
}
