package com.service.Imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PurchaseDao;
import com.pojo.Purchase;
import com.service.PurchaseService;


@Service
public class PurchaseServiceImpl implements PurchaseService {

	@Autowired
	private PurchaseDao purchasedao;
	
	public Integer addPurchase(Purchase purchase) {
		if(purchase==null) {
			return 0;
		}
		return purchasedao.addPurchase(purchase);
	}

	public List<Purchase> findPurchase() {
		return purchasedao.findPurchase();
	}

	public Purchase findPurchaseById(Integer purchaseid) {
		if(purchaseid==null) {
			return null;
		}
		return purchasedao.findPurchaseById(purchaseid);
	}

	public List<Purchase> findPurchasePage(Map<String, Object> map) {
		if(map==null) {
			return null;
		}
		return purchasedao.findPurchasePage(map);
	}

	public Integer findCount() {
		return purchasedao.findCount();
	}

}
