package com.control;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.BillRelationship;
import com.pojo.FreshProduct;
import com.pojo.Giveuser;
import com.service.BillService;

@Controller
@RequestMapping("/bill")
public class BillControl {
@Autowired
private BillService bs;
	/*
	 * 资源方提交报价
	 */
	@RequestMapping("commit")
	public String commitBil(HttpServletRequest request,Integer purchaseid,PrintWriter out,HttpServletResponse response)  {
		String[] detailid = request.getParameterValues("detailid");
		
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		//将detailid插入到竞价关系表
		Map<String,Object> map = new HashMap<String,Object>();
		int num=0;
		map.put("purchaseid", purchaseid);
		map.put("state", 0);
		for (int i = 0; i < detailid.length; i++) {
			map.put("resourcesid", detailid[i]);
			num = bs.addbill(map);
		}
		if(num>0) {
			System.out.println("是否成功："+num);
			out.print("<script type='text/javascript'>alert('发布成功');location.href='../member-mybilldetail.jsp'</script>");
		}
		//添加成功后弹框显示发布成功再将此条数据删除
		return null;
	}
	
	@RequestMapping("showbill")
	public String showbill(Integer purchaseid,Model model) {
		 
		//通过采购单id查找关系表/再获取到
		List<BillRelationship> relationshiplist = bs.findRelBypurid(purchaseid);
		List<FreshProduct> freshproductlist = new ArrayList<FreshProduct>();
		List<Giveuser> giveuserlist = new ArrayList<Giveuser>();
		giveuserlist.add(relationshiplist.get(0).getDetails().getFreshProduct().getGiveruser());
		for (int i = 0; i < relationshiplist.size(); i++) {
			freshproductlist.add(relationshiplist.get(i).getDetails().getFreshProduct());	
			
			for (int j = 0; j < giveuserlist.size(); j++) {
				if(giveuserlist.get(j).getGid()!=relationshiplist.get(i).getDetails().getFreshProduct().getGiveruser().getGid()) {
					giveuserlist.add(relationshiplist.get(i).getDetails().getFreshProduct().getGiveruser());
				}
			}
			
		}
		System.out.println("公司集合长度："+giveuserlist.size());
		model.addAttribute("giveuserlist", giveuserlist);//所有公司集合
		model.addAttribute("freshproductlist", freshproductlist);//所有的产品集合
		//所有的公司集合
		return "member-purchas-bidding";
	}
	
}
