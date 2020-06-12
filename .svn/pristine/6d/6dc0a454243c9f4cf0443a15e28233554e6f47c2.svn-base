package com.service.Imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OrderDao;
import com.pojo.Forderdetail;
import com.pojo.Freshorder;
import com.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{

@Autowired
private OrderDao orderdao;
	
	public void addOrder(Freshorder freshorder) {
		// TODO Auto-generated method stub
		orderdao.addOrder(freshorder);
	}

	public void addOrderdtail(Forderdetail forderdetail) {
		// TODO Auto-generated method stub
		orderdao.addOrderdtail(forderdetail);
	}

}
