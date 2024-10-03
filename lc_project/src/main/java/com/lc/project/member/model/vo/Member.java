package com.lc.project.member.model.vo;

import java.sql.Date;

public class Member {

	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private String tel;
	private String birthday;
	private String gender;
	private Date enrollDate;
	private Date modiftyDate;
	private String status;
	
	
	public Member() {
		super();
	}


	public Member(String userId, String userPwd, String userName, String email, String tel, String birthday,
			String gender, Date enrollDate, Date modiftyDate, String status) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.email = email;
		this.tel = tel;
		this.birthday = birthday;
		this.gender = gender;
		this.enrollDate = enrollDate;
		this.modiftyDate = modiftyDate;
		this.status = status;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getBirthday() {
		return birthday;
	}


	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public Date getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}


	public Date getModiftyDate() {
		return modiftyDate;
	}


	public void setModiftyDate(Date modiftyDate) {
		this.modiftyDate = modiftyDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", email=" + email
				+ ", tel=" + tel + ", birthday=" + birthday + ", gender=" + gender + ", enrollDate=" + enrollDate
				+ ", modiftyDate=" + modiftyDate + ", status=" + status + "]";
	}


	
}
