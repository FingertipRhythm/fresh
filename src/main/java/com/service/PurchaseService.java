package com.service;

import java.util.List;
import java.util.Map;

import com.pojo.Purchase;



public interface PurchaseService {
	public Integer addPurchase(Purchase purchase);
	public List<Purchase> findPurchase();
	public Purchase findPurchaseById(Integer purchaseid);
	public List<Purchase> findPurchasePage(Map<String,Object> map);
	public Integer findCount();
}
