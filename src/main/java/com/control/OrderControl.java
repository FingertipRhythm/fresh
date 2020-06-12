package com.control;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.BillRelationship;
import com.pojo.Forderdetail;
import com.pojo.FreshProduct;
import com.pojo.Freshorder;
import com.pojo.Giveuser;
import com.service.BillService;
import com.service.FreshProductService;
import com.service.GiveuserService;
import com.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderControl {
	
	private static int ordernoMowei = 1;
	@Autowired
	private BillService bs;
	@Autowired
	private OrderService os;
	@Autowired
	private FreshProductService fps;
	@Autowired
	private GiveuserService gs;
	
	@RequestMapping("rescreate")
	public String resourceOrder(Integer pro,HttpServletRequest request){
		
		
		/**
		 * 资源方竞价后生成订单，获取传过来的商品id
		 * 获取竞价表
		 * 插入订单
		 * 
		 */
		System.out.println("商户名称"+pro);
		Date date = new Date(System.currentTimeMillis());
		Giveuser guser = (Giveuser) request.getSession().getAttribute("giveuser");//从session中获得值
		if(guser==null) {
			guser = gs.findgiveuserByid(1);
			
		}
		System.out.println("打印供应商："+guser);
		System.out.println("打印时间"+date);
		 //订单编号
		String orderno="202-06-06"+ordernoMowei;
		Freshorder freshorder = new Freshorder(-1,orderno,guser,date,guser.getGphone(),guser.getAddress(),"已经下单");
		System.out.println(guser==null); 
		os.addOrder(freshorder);//添加订单表
		String[] proid = request.getParameterValues(pro+"");//获取提交的订单详情id
		for (int i = 0; i < proid.length; i++) {
			System.out.println("产品编号为："+proid[i]);
			FreshProduct freshproduct = fps.findproduct(Integer.parseInt(proid[i]));//获取对应商品
			
			//添加订单详情表
			Forderdetail forderdetial = new Forderdetail(-1,freshproduct,freshorder,freshproduct.getInventory());
			os.addOrderdtail(forderdetial);
		}
		ordernoMowei++;
		System.out.println("订单添加成功");
		return null;
	}
}
