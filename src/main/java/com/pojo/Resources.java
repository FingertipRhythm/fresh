package com.pojo;

import java.io.Serializable;
import java.util.Date;

/*
 * 资源实体类
 */
public class Resources implements Serializable {
	private Integer resourcesid;
	private Giveuser giveuser;
	private String resourcelist; 
	private Date uploadtime; 
	private Integer downloadnum; 
	private String realtime;
	private String phone;
	private Integer state;
	public Integer getResourcesid() {
		return resourcesid;
	}
	public void setResourcesid(Integer resourcesid) {
		this.resourcesid = resourcesid;
	}
	
	public Giveuser getGiveuser() {
		return giveuser;
	}
	public void setGiveuser(Giveuser giveuser) {
		this.giveuser = giveuser;
	}
	public String getResourcelist() {
		return resourcelist;
	}
	public void setResourcelist(String resourcelist) {
		this.resourcelist = resourcelist;
	}
	public Date getUploadtime() {
		return uploadtime;
	}
	public void setUploadtime(Date uploadtime) {
		this.uploadtime = uploadtime;
	}
	public Integer getDownloadnum() {
		return downloadnum;
	}
	public void setDownloadnum(Integer downloadnum) {
		this.downloadnum = downloadnum;
	}
	public String getRealtime() {
		return realtime;
	}
	public void setRealtime(String realtime) {
		this.realtime = realtime;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
}
