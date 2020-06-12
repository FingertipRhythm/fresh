package com.service.Imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PurchaseorderDao;
import com.pojo.Purchaseorder;
import com.service.PurchaseorderService;



@Service
public class PurchaseorderServieImp implements PurchaseorderService {
	
	@Autowired
	private  PurchaseorderDao  purchaseorderdao;
	
	public List<Purchaseorder> queryPurchaseorder(Map<String,Object> map) {
		if(map==null) {
			return null;
		}
		return purchaseorderdao.queryPurchaseorder(map);
	}


	public Integer getCount() {
		return purchaseorderdao.getCount();
	}



}
