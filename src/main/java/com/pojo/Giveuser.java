package com.pojo;

import java.io.Serializable;

public class Giveuser implements Serializable {
	
	/*gid NUMBER PRIMARY KEY;
	userid NUMBER   ;
	rname  VARCHAR2(50);   -- (1����)��ʵ����;(2��ҵ)��Ӫ������
	sid   VARCHAR2(50);    --���֤����
	spath VARCHAR2(50);  --(1����)���֤��Ƭ;(2��ҵ)֤��
	region  VARCHAR2(50);--���ڵ�
	address   VARCHAR2(50);--(1����)��ϵ��ַ;(2��ҵ)��ϸ��ַ
	gphone   VARCHAR2(50);--(1����)�ֻ�����;(2��ҵ)��Ӫ����ϵ��ʽ
	email    VARCHAR2(50);--��������
	cname  VARCHAR2(50);--��˾����
	qyfrname    VARCHAR2(50);--��ҵ��������
	post VARCHAR2(50);--��Ӫ��ְ��
	judge NUMBER     --�ж�*/
	
	private Integer  gid;
	private Integer userid; 
	private String rname; 
	private String sid; 
	private String spath; 
	private String region; 
	private String address; 
	private String gphone; 
	private String email; 
	private String cname; 
	private String qyfrname; 
	private String post; 
    private Integer judge;
    
    
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSpath() {
		return spath;
	}
	public void setSpath(String spath) {
		this.spath = spath;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGphone() {
		return gphone;
	}
	public void setGphone(String gphone) {
		this.gphone = gphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getQyfrname() {
		return qyfrname;
	}
	public void setQyfrname(String qyfrname) {
		this.qyfrname = qyfrname;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public Integer getJudge() {
		return judge;
	}
	public void setJudge(Integer judge) {
		this.judge = judge;
	}
	@Override
	public String toString() {
		return "Giveuser [gid=" + gid + ", userid=" + userid + ", rname=" + rname + ", sid=" + sid + ", spath=" + spath
				+ ", region=" + region + ", address=" + address + ", gphone=" + gphone + ", email=" + email + ", cname="
				+ cname + ", qyfrname=" + qyfrname + ", post=" + post + ", judge=" + judge + "]";
	}
	public Giveuser(Integer gid, Integer userid, String rname, String sid, String spath, String region, String address,
			String gphone, String email, String cname, String qyfrname, String post, Integer judge) {
		super();
		this.gid = gid;
		this.userid = userid;
		this.rname = rname;
		this.sid = sid;
		this.spath = spath;
		this.region = region;
		this.address = address;
		this.gphone = gphone;
		this.email = email;
		this.cname = cname;
		this.qyfrname = qyfrname;
		this.post = post;
		this.judge = judge;
	}
	public Giveuser() {
		super();
		// TODO Auto-generated constructor stub
	}
    
    
	

}
