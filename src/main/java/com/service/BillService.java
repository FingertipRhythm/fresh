package com.service;

import java.util.List;
import java.util.Map;

import com.pojo.BillRelationship;

public interface BillService {
	int addbill(Map<String,Object> map);
	List<BillRelationship> findRelBypurid(Integer purchaseid);//���ݲɹ���id��ѯ��ϵ��
	BillRelationship findRelByrelationid(Integer relationshipid);//���ݾ���id��ѯ���۱�
}
