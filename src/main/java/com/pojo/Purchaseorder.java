package com.pojo;

import java.io.Serializable;
import java.util.Date;

/*
 * �ɹ���
 */
public class Purchaseorder implements Serializable{
	private Integer purchaseid; // �ɹ���ID
	private Integer pid; // �ɹ���ID
	private String purchaseordername; // �ɹ�������
	private String purchasename; // �ɹ���Ʒ
	private String place; // ����
	private String spec; // ����ͺ�
	private String rank; // ����
	private Integer num; // ����
	private Double unitprice; // ����
	private String warehouse; // �ֿ�
	private String futuresspot; // ��/�ֻ�
	private String payment; // ����ʽ��
	private String receipt; // ��Ʊ����
	private String receivingaddress; // �ջ���ַ
	private String remarks; // ��ע
	private String starttime;///�ϴ�ʱ��
	private String endtime; // �ɹ���ֹʱ��
	private String contacts; // ��ϵ��
	private String company; // ��˾����
	private Long phone; // �ֻ���
	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}



	public Integer getPurchaseid() {
		return purchaseid;
	}

	public void setPurchaseid(Integer purchaseid) {
		this.purchaseid = purchaseid;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getpurchaseordername() {
		return purchaseordername;
	}

	public void setpurchaseordername(String purchaseordername) {
		this.purchaseordername = purchaseordername;
	}

	public String getPurchasename() {
		return purchasename;
	}

	public void setPurchasename(String purchasename) {
		this.purchasename = purchasename;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Double getUnitprice() {
		return unitprice;
	}

	public void setUnitprice(Double unitprice) {
		this.unitprice = unitprice;
	}

	public String getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(String warehouse) {
		this.warehouse = warehouse;
	}

	public String getFuturesspot() {
		return futuresspot;
	}

	public void setFuturesspot(String futuresspot) {
		this.futuresspot = futuresspot;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getReceipt() {
		return receipt;
	}

	public void setReceipt(String receipt) {
		this.receipt = receipt;
	}

	public String getReceivingaddress() {
		return receivingaddress;
	}

	public void setReceivingaddress(String receivingaddress) {
		this.receivingaddress = receivingaddress;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public String getContacts() {
		return contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Long getPhone() {
		return phone;
	}

	public void setPhone(Long phone) {
		this.phone = phone;
	}

}
