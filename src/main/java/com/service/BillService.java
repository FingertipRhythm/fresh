package com.service;

import java.util.List;
import java.util.Map;

import com.pojo.BillRelationship;

public interface BillService {
	int addbill(Map<String,Object> map);
	List<BillRelationship> findRelBypurid(Integer purchaseid);//根据采购单id查询关系表
	BillRelationship findRelByrelationid(Integer relationshipid);//根据竞价id查询竞价表
}
