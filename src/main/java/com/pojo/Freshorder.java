package com.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

//¶©µ¥
public class Freshorder {
	private Integer orderid;
	private String orderno ;
	private Giveuser giveuser;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date  ordertime; 
	private String phone; 
	private String address; 
	private String orderstatus;
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public Giveuser getGiveuser() {
		return giveuser;
	}
	public void setGiveuser(Giveuser giveuser) {
		this.giveuser = giveuser;
	}
	public Date getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
	public Freshorder() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Freshorder(Integer orderid, String orderno, Giveuser giveuser, Date ordertime, String phone, String address,
			String orderstatus) {
		super();
		this.orderid = orderid;
		this.orderno = orderno;
		this.giveuser = giveuser;
		this.ordertime = ordertime;
		this.phone = phone;
		this.address = address;
		this.orderstatus = orderstatus;
	} 
	
}
