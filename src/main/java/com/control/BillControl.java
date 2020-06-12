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
	 * ��Դ���ύ����
	 */
	@RequestMapping("commit")
	public String commitBil(HttpServletRequest request,Integer purchaseid,PrintWriter out,HttpServletResponse response)  {
		String[] detailid = request.getParameterValues("detailid");
		
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		//��detailid���뵽���۹�ϵ��
		Map<String,Object> map = new HashMap<String,Object>();
		int num=0;
		map.put("purchaseid", purchaseid);
		map.put("state", 0);
		for (int i = 0; i < detailid.length; i++) {
			map.put("resourcesid", detailid[i]);
			num = bs.addbill(map);
		}
		if(num>0) {
			System.out.println("�Ƿ�ɹ���"+num);
			out.print("<script type='text/javascript'>alert('�����ɹ�');location.href='../member-mybilldetail.jsp'</script>");
		}
		//��ӳɹ��󵯿���ʾ�����ɹ��ٽ���������ɾ��
		return null;
	}
	
	@RequestMapping("showbill")
	public String showbill(Integer purchaseid,Model model) {
		 
		//ͨ���ɹ���id���ҹ�ϵ��/�ٻ�ȡ��
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
		System.out.println("��˾���ϳ��ȣ�"+giveuserlist.size());
		model.addAttribute("giveuserlist", giveuserlist);//���й�˾����
		model.addAttribute("freshproductlist", freshproductlist);//���еĲ�Ʒ����
		//���еĹ�˾����
		return "member-purchas-bidding";
	}
	
}
