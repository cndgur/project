package com.lc.project.member.model.vo;

public class Member {

	private String email;
	private String pwd;
	private String phone;
	private String name;
	
	public Member() {
		super();
	}

	public Member(String email, String pwd, String phone, String name) {
		super();
		this.email = email;
		this.pwd = pwd;
		this.phone = phone;
		this.name = name;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Member [email=" + email + ", pwd=" + pwd + ", phone=" + phone + ", name=" + name + "]";
	}
	
	
	
}
