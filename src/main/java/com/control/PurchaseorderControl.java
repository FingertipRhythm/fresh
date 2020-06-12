package com.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pojo.Purchaseorder;
import com.service.PurchaseorderService;





@Controller
@RequestMapping("/pur")
public class PurchaseorderControl {
	@Autowired
	private PurchaseorderService purchaseorderServie;
	
		@Autowired
		private  PurchaseorderService  purchaseordeservicer;

		@RequestMapping("findpage")
		public String findpurpage(Model model,@RequestParam(defaultValue="1",required=false)Integer cp,@RequestParam(defaultValue="5",required=false)Integer ps) {
			System.out.println("执行findpurpage方法..");
			
			int start = (cp-1)*ps;
			int end = cp*ps+1;
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("start", start);
			map.put("end", end);
			System.out.println(start+""+end);
			List<Purchaseorder> purchaseorderlist = purchaseorderServie.queryPurchaseorder(map);
			int count = purchaseorderServie.getCount();//总行数
			int totalpage = (count-1)/ps+1;//总页码数
			model.addAttribute("purchaseorderlist", purchaseorderlist);
			model.addAttribute("totalpage", totalpage);
			model.addAttribute("cp", cp);
			model.addAttribute("ps", ps);
			model.addAttribute("count", count);
			return "member-Mmybill";
			
		}
}
