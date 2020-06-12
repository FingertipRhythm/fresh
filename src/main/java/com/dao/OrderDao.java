package com.dao;

import com.pojo.Forderdetail;
import com.pojo.Freshorder;

public interface OrderDao {
	void addOrder(Freshorder freshorder);//添加订单表
	void addOrderdtail(Forderdetail forderdetail);//添加订单详情表
}
