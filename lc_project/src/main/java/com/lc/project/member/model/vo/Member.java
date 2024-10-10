package com.lc.project.member.model.vo;

import java.sql.Date;

public class Member {
	private int userNo;
	private String userName;
    private String userId;
    private String userPwd;
    private String tel;
    private String email;
    private String address;
    private String birthday;
    private String gender;
    private Date enrollDate;
    private Date modifyDate;
    private String status;
	
    
    public Member() {
		super();
	}


	public Member(int userNo, String userName, String userId, String userPwd, String tel, String email, String address,
			String birthday, String gender, Date enrollDate, Date modifyDate, String status) {
		super();
		this.userNo = userNo;
		this.userName = userName;
		this.userId = userId;
		this.userPwd = userPwd;
		this.tel = tel;
		this.email = email;
		this.address = address;
		this.birthday = birthday;
		this.gender = gender;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
	}


	public Member(String userName, String userId, String userPwd, String tel, String email, String address,
			String birthday, String gender) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.userPwd = userPwd;
		this.tel = tel;
		this.email = email;
		this.address = address;
		this.birthday = birthday;
		this.gender = gender;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
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


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
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


	public Date getModifyDate() {
		return modifyDate;
	}


	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userName=" + userName + ", userId=" + userId + ", userPwd=" + userPwd
				+ ", tel=" + tel + ", email=" + email + ", address=" + address + ", birthday=" + birthday + ", gender="
				+ gender + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", status=" + status + "]";
	}
    


}
