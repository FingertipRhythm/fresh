package com.pojo;

import java.io.Serializable;

public class HatProvince  implements Serializable   {
	
	 private Integer ID ;
	 
	 private String provinceID ;
	 
	 private String province;

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getProvinceID() {
		return provinceID;
	}

	public void setProvinceID(String provinceID) {
		this.provinceID = provinceID;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	@Override
	public String toString() {
		return "HatProvince [ID=" + ID + ", provinceID=" + provinceID + ", province=" + province + "]";
	}
	 
	 


}
