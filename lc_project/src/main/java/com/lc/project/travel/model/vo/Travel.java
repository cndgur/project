package com.lc.project.travel.model.vo;

public class Travel {
	private String trName;
	private String trAddress;
	private String trInfo;
<<<<<<< HEAD
	private String mapInfo;
	private String trId;
	private int count;
=======
	private String tr_personnel;
	private String tr_location;
	private String tr_theme;
	private String tr_map_lat;
	private String tr_map_long;
<<<<<<< HEAD
>>>>>>> 360f04d532dd42d02e2bc1b4d80b8ccf435c0936
	private String picInfo;
	public Travel() {
		super();
	}
<<<<<<< HEAD
	public Travel(String trName, String trAddress, String trInfo, String mapInfo, String trId, int count,
			String picInfo) {
=======
=======
>>>>>>> 684d79f02d1b3404810036aad0d7344dcdb026e0
	public Travel(String trName, String trAddress, String trInfo, String tr_personnel, String tr_location,
			String tr_theme, String tr_map_lat, String tr_map_long, String picInfo) {
>>>>>>> 360f04d532dd42d02e2bc1b4d80b8ccf435c0936
		super();
		this.trName = trName;
		this.trAddress = trAddress;
		this.trInfo = trInfo;
		this.mapInfo = mapInfo;
		this.trId = trId;
		this.count = count;
		this.picInfo = picInfo;
	}
	public String getTrName() {
		return trName;
	}
	public void setTrName(String trName) {
		this.trName = trName;
	}
	public String getTrAddress() {
		return trAddress;
	}
	public void setTrAddress(String trAddress) {
		this.trAddress = trAddress;
	}
	public String getTrInfo() {
		return trInfo;
	}
	public void setTrInfo(String trInfo) {
		this.trInfo = trInfo;
	}
	public String getMapInfo() {
		return mapInfo;
	}
	public void setMapInfo(String mapInfo) {
		this.mapInfo = mapInfo;
	}
	public String getTrId() {
		return trId;
	}
	public void setTrId(String trId) {
		this.trId = trId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getPicInfo() {
		return picInfo;
	}
	public void setPicInfo(String picInfo) {
		this.picInfo = picInfo;
	}
	@Override
	public String toString() {
		return "Travel [trName=" + trName + ", trAddress=" + trAddress + ", trInfo=" + trInfo + ", mapInfo=" + mapInfo
				+ ", trId=" + trId + ", count=" + count + ", picInfo=" + picInfo + "]";
	}
<<<<<<< HEAD
=======
	
	
<<<<<<< HEAD
=======
	
	
>>>>>>> 684d79f02d1b3404810036aad0d7344dcdb026e0
>>>>>>> 360f04d532dd42d02e2bc1b4d80b8ccf435c0936
}
