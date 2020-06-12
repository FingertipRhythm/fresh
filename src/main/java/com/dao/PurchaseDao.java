package com.dao;

import java.util.List;
import java.util.Map;

import com.pojo.Purchase;



public interface PurchaseDao {

	/**
	 * 增加采购单
	 * @param purchase
	 * @return
	 */
	public Integer addPurchase(Purchase purchase);
	/**
	 * 查询所有采购信息
	 * @return
	 */
	public List<Purchase> findPurchase();
	/**
	 * 分页查询
	 * @param map
	 * @return
	 */
	public List<Purchase> findPurchasePage(Map<String,Object> map);
	/**
	 * 采购单总条数
	 * @return
	 */
	public Integer findCount();
	
	/**
	 * 根据采购编号查询采购信息
	 * @param purchaseid
	 * @return
	 */
	public Purchase findPurchaseById(Integer purchaseid);
}
