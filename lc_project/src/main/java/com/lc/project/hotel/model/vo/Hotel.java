package com.lc.project.hotel.model.vo;

public class Hotel {
	private String hName;
	private String hKind;
	private String ht_map_lat;
	private String ht_map_long;
	private String picInfo;
	public Hotel(String hName, String hKind, String ht_map_lat, String ht_map_long, String picInfo) {
		super();
		this.hName = hName;
		this.hKind = hKind;
		this.ht_map_lat = ht_map_lat;
		this.ht_map_long = ht_map_long;
		this.picInfo = picInfo;
	}
	public Hotel() {
		super();
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	public String gethKind() {
		return hKind;
	}
	public void sethKind(String hKind) {
		this.hKind = hKind;
	}
	public String getHt_map_lat() {
		return ht_map_lat;
	}
	public void setHt_map_lat(String ht_map_lat) {
		this.ht_map_lat = ht_map_lat;
	}
	public String getHt_map_long() {
		return ht_map_long;
	}
	public void setHt_map_long(String ht_map_long) {
		this.ht_map_long = ht_map_long;
	}
	public String getPicInfo() {
		return picInfo;
	}
	public void setPicInfo(String picInfo) {
		this.picInfo = picInfo;
	}
	@Override
	public String toString() {
		return "Hotel [hName=" + hName + ", hKind=" + hKind + ", ht_map_lat=" + ht_map_lat + ", ht_map_long="
				+ ht_map_long + ", picInfo=" + picInfo + "]";
	}
	
}
