package com.service.Imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.FreshProductDao;
import com.pojo.FreshProduct;
import com.pojo.Resourcesdetails;
import com.service.FreshProductService;
@Service
public class FreshProductServiceImpl implements FreshProductService {
@Autowired
private FreshProductDao freshProductDao;
	public int addfresh(FreshProduct freshproduct) {
		// TODO Auto-generated method stub
		return freshProductDao.addfresh(freshproduct);
	}
	//根据id查询
	public FreshProduct findproduct(Integer productid) {
		// TODO Auto-generated method stub
		return freshProductDao.findproduct(productid);
	}
	
	public List<FreshProduct> findResourceBybill(FreshProduct freshProduct) {
		// TODO Auto-generated method stub
		System.out.println("产品名称"+freshProduct.getProductname());
		if(freshProduct.getClassid()==null||freshProduct.getClassid().equals("")) {
			freshProduct.setClassid(null);
		}
		if(freshProduct.getProductname()==null||freshProduct.getProductname().equals("")) {
			freshProduct.setProductname(null);
		}
		if(freshProduct.getGrade()==null||freshProduct.getGrade().equals("")) {
			freshProduct.setGrade(null);
		}
		
		return freshProductDao.findResourceBybill(freshProduct);
	}
	public Resourcesdetails finddetailBypid(Integer productid) {
		// TODO Auto-generated method stub
		return freshProductDao.finddetailBypid(productid);
	}

}
