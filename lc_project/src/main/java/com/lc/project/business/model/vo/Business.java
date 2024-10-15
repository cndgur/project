package com.lc.project.business.model.vo;

import java.sql.Date;

public class Business {

<<<<<<< HEAD
=======
<<<<<<< HEAD
	private int bsNo;
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
	private String bsName;
	private String bsId;
	private String bsPwd;
	private String bsEmail;
	private String bsTel;
	private String bsAddress;
	private String bslocation;
	private String bsTitle;
	private String latitude;
	private String longitude;
	private Date enrolldate;
	private Date modifydate;
	private String status;
	
	public Business() {
		super();
	}

<<<<<<< HEAD
	public Business(String bsName, String bsId, String bsPwd, String bsEmail, String bsTel, String bsAddress,
			String bslocation, String bsTitle, String latitude, String longitude, Date enrolldate, Date modifydate,
			String status) {
		super();
=======
<<<<<<< HEAD
	public Business(int bsNo, String bsName, String bsId, String bsPwd, String bsEmail, String bsTel, String bsAddress,
			String bsTitle, Date enrolldate, Date modifydate, String status) {
		super();
		this.bsNo = bsNo;
=======


	public Business(String bsName, String bsId, String bsPwd, String bsEmail, String bsTel, String bsAddress,
			String bsTitle, Date enrolldate, Date modifydate, String status) {
		super();
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
		this.bsName = bsName;
		this.bsId = bsId;
		this.bsPwd = bsPwd;
		this.bsEmail = bsEmail;
		this.bsTel = bsTel;
		this.bsAddress = bsAddress;
		this.bslocation = bslocation;
		this.bsTitle = bsTitle;
		this.latitude = latitude;
		this.longitude = longitude;
		this.enrolldate = enrolldate;
		this.modifydate = modifydate;
		this.status = status;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public Business(String bsName, String bsId, String bsPwd, String bsEmail, String bsTel, String bsAddress,
			String bslocation, String bsTitle) {
		super();
		this.bsName = bsName;
		this.bsId = bsId;
		this.bsPwd = bsPwd;
		this.bsEmail = bsEmail;
		this.bsTel = bsTel;
		this.bsAddress = bsAddress;
		this.bslocation = bslocation;
		this.bsTitle = bsTitle;
	}

	public Business(String bsName, String bsId, String bsPwd, String bsEmail, String bsTel, String bsAddress,
			String bsTitle) {
		super();
		this.bsName = bsName;
		this.bsId = bsId;
		this.bsPwd = bsPwd;
		this.bsEmail = bsEmail;
		this.bsTel = bsTel;
		this.bsAddress = bsAddress;
		this.bsTitle = bsTitle;
	}

<<<<<<< HEAD
=======
<<<<<<< HEAD
	public int getBsNo() {
		return bsNo;
	}

	public void setBsNo(int bsNo) {
		this.bsNo = bsNo;
	}
=======

>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b

>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
	public String getBsName() {
		return bsName;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setBsName(String bsName) {
		this.bsName = bsName;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public String getBsId() {
		return bsId;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setBsId(String bsId) {
		this.bsId = bsId;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public String getBsPwd() {
		return bsPwd;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setBsPwd(String bsPwd) {
		this.bsPwd = bsPwd;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public String getBsEmail() {
		return bsEmail;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setBsEmail(String bsEmail) {
		this.bsEmail = bsEmail;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public String getBsTel() {
		return bsTel;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setBsTel(String bsTel) {
		this.bsTel = bsTel;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public String getBsAddress() {
		return bsAddress;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setBsAddress(String bsAddress) {
		this.bsAddress = bsAddress;
	}

<<<<<<< HEAD
	public String getBslocation() {
		return bslocation;
	}

	public void setBslocation(String bslocation) {
		this.bslocation = bslocation;
	}

=======
<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
	public String getBsTitle() {
		return bsTitle;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

<<<<<<< HEAD
	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

=======
<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
	public Date getEnrolldate() {
		return enrolldate;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public Date getModifydate() {
		return modifydate;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setModifydate(Date modifydate) {
		this.modifydate = modifydate;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public String getStatus() {
		return status;
	}

<<<<<<< HEAD
=======


>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	public void setStatus(String status) {
		this.status = status;
	}

<<<<<<< HEAD
	@Override
	public String toString() {
		return "Business [bsName=" + bsName + ", bsId=" + bsId + ", bsPwd=" + bsPwd + ", bsEmail=" + bsEmail
				+ ", bsTel=" + bsTel + ", bsAddress=" + bsAddress + ", bslocation=" + bslocation + ", bsTitle="
				+ bsTitle + ", latitude=" + latitude + ", longitude=" + longitude + ", enrolldate=" + enrolldate
				+ ", modifydate=" + modifydate + ", status=" + status + "]";
	}
<<<<<<< HEAD

	


	
=======
=======


	@Override
	public String toString() {
		return "Business [bsName=" + bsName + ", bsId=" + bsId + ", bsPwd=" + bsPwd + ", bsEmail=" + bsEmail
				+ ", bsTel=" + bsTel + ", bsAddress=" + bsAddress + ", bsTitle=" + bsTitle + ", enrolldate="
				+ enrolldate + ", modifydate=" + modifydate + ", status=" + status + "]";
	}

	
	
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
}