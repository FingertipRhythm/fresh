package com.service;

import java.util.List;

import com.pojo.FreshProduct;
import com.pojo.Resourcesdetails;

public interface FreshProductService {
	int addfresh(FreshProduct freshproduct);
	FreshProduct findproduct(Integer productid);//������Ʒid��ѯ����Ʒ��Ϣ
	List<FreshProduct> findResourceBybill(FreshProduct freshProduct);//���ݷ��࣬������Ʋ�ѯ����Ʒ
	Resourcesdetails finddetailBypid(Integer productid);//������Ʒid��ѯ��Դ�����

}
