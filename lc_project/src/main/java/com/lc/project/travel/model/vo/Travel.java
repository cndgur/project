package com.lc.project.travel.model.vo;

public class Travel {
	private String trName;
	private String trAddress;
	private String trInfo;
	private String mapInfo;
	private String trId;
	private int count;
	public Travel() {
		super();
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

	public Travel(String trName, String trAddress, String trInfo, String mapInfo, String trId, int count) {
		super();
		this.trName = trName;
		this.trAddress = trAddress;
		this.trInfo = trInfo;
		this.mapInfo = mapInfo;
		this.trId = trId;
		this.count = count;
	}

	@Override
	public String toString() {
		return "Travel [trName=" + trName + ", trAddress=" + trAddress + ", trInfo=" + trInfo + ", mapInfo=" + mapInfo
				+ ", trId=" + trId + ", count=" + count + "]";
	}

	public String getMapInfo() {
		return mapInfo;
	}

	public void setMapInfo(String mapInfo) {
		this.mapInfo = mapInfo;
	}

	
}
