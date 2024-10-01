package com.lc.project.member.model.vo;

public class Member {

	private String email;
	private String pwd;
	private String name;
	private String phone;
	
	public Member() {
		super();
	}

	public Member(String email, String pwd, String phone, String name) {
		super();
		this.email = email;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Member [email=" + email + ", pwd=" + pwd + ", name=" + name + ", phone=" + phone + "]";
	}

	
	
	
	
}
