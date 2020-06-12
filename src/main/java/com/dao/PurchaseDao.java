package com.dao;

import java.util.List;
import java.util.Map;

import com.pojo.Purchase;



public interface PurchaseDao {

	/**
	 * ���Ӳɹ���
	 * @param purchase
	 * @return
	 */
	public Integer addPurchase(Purchase purchase);
	/**
	 * ��ѯ���вɹ���Ϣ
	 * @return
	 */
	public List<Purchase> findPurchase();
	/**
	 * ��ҳ��ѯ
	 * @param map
	 * @return
	 */
	public List<Purchase> findPurchasePage(Map<String,Object> map);
	/**
	 * �ɹ���������
	 * @return
	 */
	public Integer findCount();
	
	/**
	 * ���ݲɹ���Ų�ѯ�ɹ���Ϣ
	 * @param purchaseid
	 * @return
	 */
	public Purchase findPurchaseById(Integer purchaseid);
}
