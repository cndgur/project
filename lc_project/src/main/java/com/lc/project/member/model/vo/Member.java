package com.lc.project.member.model.vo;

public class Member {

	private String email;
	private String pwd;
	private String name;
	private String tel;
	
	public Member() {
		super();
	}

	public Member(String email, String pwd, String name, String tel) {
		super();
		this.email = email;
		this.pwd = pwd;
		this.name = name;
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "Member [email=" + email + ", pwd=" + pwd + ", name=" + name + ", tel=" + tel + "]";
	}
	
}
