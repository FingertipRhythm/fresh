package com.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Purchase implements Serializable {

	private Integer purchaseid;  //�ɹ������
	private String purchase_title; //�ɹ�������
	private String purchase_name;  //�ɹ���Ʒ
	private String producing_area; //����Ҫ��
	private String purchase_type;  //����ͺ�
	private String purchase_level; //����Ҫ��
	private String storehouse;     //�ֿ�Ҫ��
	private Integer state; 			//��/�ֻ�
	private String price_require;   //�۸�Ҫ��
	private String purchase_description;  //�ɹ�˵��
	private String payment_method;   //���ʽ
	private Integer invoice_type;    //��Ʊ����
	private String receipt_address;  //�ջ���ַ
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date start_time; 		//�ɹ�����ʱ��
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date end_time; 			//�ɹ���ֹʱ��
	private Integer userid; 		//�û����
	private Integer purchase_state;  //�ɹ���״̬
	private Integer administratorsid;  //����Ա���
	private Integer product_branchid;  //��Ʒ����id
	private Integer purchase_number;   //����
	
	private Integer select_supplierid;  //ѡ�й�Ӧ�̱��
	private String contacts;   //��ϵ��
	private String company_name;  //��˾����
	private String contacts_phone;  //�ֻ���
	public Integer getPurchaseid() {
		return purchaseid;
	}
	public void setPurchaseid(Integer purchaseid) {
		this.purchaseid = purchaseid;
	}
	public String getPurchase_title() {
		return purchase_title;
	}
	public void setPurchase_title(String purchase_title) {
		this.purchase_title = purchase_title;
	}
	public String getPurchase_name() {
		return purchase_name;
	}
	public void setPurchase_name(String purchase_name) {
		this.purchase_name = purchase_name;
	}
	public String getProducing_area() {
		return producing_area;
	}
	public void setProducing_area(String producing_area) {
		this.producing_area = producing_area;
	}
	public String getPurchase_type() {
		return purchase_type;
	}
	public void setPurchase_type(String purchase_type) {
		this.purchase_type = purchase_type;
	}
	public String getPurchase_level() {
		return purchase_level;
	}
	public void setPurchase_level(String purchase_level) {
		this.purchase_level = purchase_level;
	}
	public String getStorehouse() {
		return storehouse;
	}
	public void setStorehouse(String storehouse) {
		this.storehouse = storehouse;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getPrice_require() {
		return price_require;
	}
	public void setPrice_require(String price_require) {
		this.price_require = price_require;
	}
	public String getPurchase_description() {
		return purchase_description;
	}
	public void setPurchase_description(String purchase_description) {
		this.purchase_description = purchase_description;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	public Integer getInvoice_type() {
		return invoice_type;
	}
	public void setInvoice_type(Integer invoice_type) {
		this.invoice_type = invoice_type;
	}
	public String getReceipt_address() {
		return receipt_address;
	}
	public void setReceipt_address(String receipt_address) {
		this.receipt_address = receipt_address;
	}
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}
	public Date getEnd_time() {
		return end_time;
	}
	public void setEnd_time(Date end_time) {
		this.end_time = end_time;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getPurchase_state() {
		return purchase_state;
	}
	public void setPurchase_state(Integer purchase_state) {
		this.purchase_state = purchase_state;
	}
	public Integer getAdministratorsid() {
		return administratorsid;
	}
	public void setAdministratorsid(Integer administratorsid) {
		this.administratorsid = administratorsid;
	}
	public Integer getProduct_branchid() {
		return product_branchid;
	}
	public void setProduct_branchid(Integer product_branchid) {
		this.product_branchid = product_branchid;
	}
	public Integer getPurchase_number() {
		return purchase_number;
	}
	public void setPurchase_number(Integer purchase_number) {
		this.purchase_number = purchase_number;
	}
	public Integer getSelect_supplierid() {
		return select_supplierid;
	}
	public void setSelect_supplierid(Integer select_supplierid) {
		this.select_supplierid = select_supplierid;
	}
	public String getContacts() {
		return contacts;
	}
	public void setContacts(String contacts) {
		this.contacts = contacts;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getContacts_phone() {
		return contacts_phone;
	}
	public void setContacts_phone(String contacts_phone) {
		this.contacts_phone = contacts_phone;
	}
	@Override
	public String toString() {
		return "Purchase [purchaseid=" + purchaseid + ", purchase_title=" + purchase_title + ", purchase_name="
				+ purchase_name + ", producing_area=" + producing_area + ", purchase_type=" + purchase_type
				+ ", purchase_level=" + purchase_level + ", storehouse=" + storehouse + ", state=" + state
				+ ", price_require=" + price_require + ", purchase_description=" + purchase_description
				+ ", payment_method=" + payment_method + ", invoice_type=" + invoice_type + ", receipt_address="
				+ receipt_address + ", start_time=" + start_time + ", end_time=" + end_time + ", userid=" + userid
				+ ", purchase_state=" + purchase_state + ", administratorsid=" + administratorsid
				+ ", product_branchid=" + product_branchid + ", purchase_number=" + purchase_number
				+ ", select_supplierid=" + select_supplierid + ", contacts=" + contacts + ", company_name="
				+ company_name + ", contacts_phone=" + contacts_phone + "]";
	}
	
	
}
