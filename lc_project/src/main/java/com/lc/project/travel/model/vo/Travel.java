package com.lc.project.travel.model.vo;

public class Travel {
	private String trName;
	private String trAddress;
	private String trInfo;
	private String mapInfo;
	private String trId;
	private int count;
	private String picInfo;
	public Travel() {
		super();
	}
	public Travel(String trName, String trAddress, String trInfo, String mapInfo, String trId, int count,
			String picInfo) {
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
	
	
}
