package com.service.Imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BillDao;
import com.pojo.BillRelationship;
import com.service.BillService;
@Service
public class BillServiceImpl implements BillService {
	@Autowired
	private BillDao billdao;
	
	public int addbill(Map<String, Object> map) {
		return billdao.addbill(map);

	}

	public List<BillRelationship> findRelBypurid(Integer purchaseid) {
		// TODO Auto-generated method stub
		return billdao.findRelBypurid(purchaseid);
	}

	public BillRelationship findRelByrelationid(Integer relationshipid) {
		// TODO Auto-generated method stub
		return billdao.findRelByrelationid(relationshipid);
	}

}
