package com.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductClassDao;
import com.pojo.ProductClass;
import com.service.ProductClassService;
@Service
public class ProductServiceImpl implements ProductClassService {

	@Autowired
	private ProductClassDao productclassdao;
	
	public List<ProductClass> findAllProductClass() {
		return productclassdao.findAllProductClass();
	}

}
