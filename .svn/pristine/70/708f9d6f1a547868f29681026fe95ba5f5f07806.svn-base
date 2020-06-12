package com.dao;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.pojo.FreshProduct;
import com.pojo.Resourcesdetails;


/*
 * 商品的dao层
 */

@Repository
public interface FreshProductDao {
	int addfresh(FreshProduct freshproduct);
	
	FreshProduct findproduct(Integer productid);//根据商品id查询出商品信息
	List<FreshProduct> findResourceBybill(FreshProduct freshProduct);//根据分类，规格，名称查询出商品
	
	Resourcesdetails finddetailBypid(Integer productid);//根据商品id查询资源详情表
}
