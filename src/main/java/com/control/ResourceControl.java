package com.control;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.FreshProduct;
import com.pojo.Giveuser;
import com.pojo.Resources;
import com.pojo.Resourcesdetails;
import com.service.FreshProductService;
import com.service.GiveuserService;
import com.service.ResourceService;

@Controller
@RequestMapping("/sup")
public class ResourceControl {
@Autowired
private ResourceService resourceService;
@Autowired
private GiveuserService giveuserService;
@Autowired
private FreshProductService freshProductService;

	
	@RequestMapping("addResource")
	public String addResource(Resources resource,HttpServletRequest request){
		//����pid��ѯ��Ʒ
		/*
		 * ������һ��resource,����һ����Դ����gid�������Դ�����Ͷ����ƷҲ����pid
		 */
		System.out.println("�����Դ");
		HttpSession session = request.getSession();
		Giveuser giveuser = (Giveuser) session.getAttribute("giveuser");
		if(giveuser==null) {
			giveuser = new Giveuser();
			giveuser.setGid(1);
		}
		
		String[] classid = request.getParameterValues("classid");
		             
		String[] productname = request.getParameterValues("productname");
		String[] originplace = request.getParameterValues("originplace");
		String[] Specifications = request.getParameterValues("Specifications");
		String[] inventory = request.getParameterValues("inventory");
		String[] price = request.getParameterValues("price");
		String[] grade = request.getParameterValues("grade");
		String[] storehouse = request.getParameterValues("storehouse");
		String[] sf = request.getParameterValues("sf");
		
		//�����Դ��ֻ��Ҫһ������Ӻ��ȡid
		resource.setGiveuser(giveuser);
		resourceService.addResource(resource);
		
		for (int i = 0; i < sf.length; i++) {
			System.out.println("sf�ڻ�/�ֻ���"+sf[i]);
			FreshProduct freshproduct = new FreshProduct(-1,productname[i],originplace[i],Specifications[i],grade[i],Integer.parseInt(inventory[i]),storehouse[i],Double.parseDouble(price[i]),sf[i],Integer.parseInt(classid[i]),giveuser);
			//�����Ʒ
			freshProductService.addfresh(freshproduct);
			
			//������飬��Ҫ��Դ��id����Ʒid��
			Resourcesdetails resourcesdetails = new Resourcesdetails(-1,resource,freshproduct,freshproduct.getInventory());
			resourceService.addResourcedetail(resourcesdetails);
			
		}
		//��������ת����ѯ����ҳ��
		return "redirect:/sup/getResource";
	}
	
	//��ѯ����Դ���л�Ա����չʾ
	@RequestMapping("getResource")
	public String getResource(Model model,HttpSession session) {
		System.out.println("��ת����ѯ��Դ������");
		Giveuser guser = (Giveuser) session.getAttribute("giveuser");
		if(guser==null) {
			guser = new Giveuser();
			guser.setGid(1);
		}
		List<Resources> Resourceslist = resourceService.findresource(guser.getGid());//�õ���Դ��
		
		//������Դ��id��ȡ����Դ���鼯�ϣ���ͨ��װ����Դ���鼯����
		List<List<Resourcesdetails>> alldetails = new ArrayList<List<Resourcesdetails>>();
		for (int i = 0; i < Resourceslist.size(); i++) {
		Integer resourcesid = Resourceslist.get(i).getResourcesid();//��ȡ��Դ��id
			
		List<Resourcesdetails> detaillist =	resourceService.findresourcedetails(resourcesid);//ÿ����Դ���������Դ����
		
		alldetails.add(detaillist);//������������ӵ�һ��list������
		}
		//System.out.println("���е���Դ����"+alldetails.get(0).get(0).getFreshProduct().getClassid());
		//System.out.println("����״̬"+Resourceslist.get(0).getState());
		 model.addAttribute("alldetails",alldetails);
		 model.addAttribute("Resourceslist", Resourceslist);
		 
		return "menmber-mysupply";
	}
	
	
	
	@RequestMapping("showResource")
	public String showResource(Model model) {
		/*
		 * ��ҳ��Դ��չʾ�����ҳ�������Դ����������ʾ
		 */
		List<Resources> Resourceslist = resourceService.findAllResource();//�õ���Դ��
		
		//������Դ��id��ȡ����Դ���鼯�ϣ���ͨ��װ����Դ���鼯����
				List<List<Resourcesdetails>> alldetails = new ArrayList<List<Resourcesdetails>>();
				for (int i = 0; i < Resourceslist.size(); i++) {
				Integer resourcesid = Resourceslist.get(i).getResourcesid();//��ȡ��Դ��id
					
				List<Resourcesdetails> detaillist =	resourceService.findresourcedetails(resourcesid);//ÿ����Դ���������Դ����
				
				alldetails.add(detaillist);//������������ӵ�һ��list������
				}
				System.out.println("���е���Դ����"+alldetails.get(0).get(0).getFreshProduct().getClassid());
				System.out.println("����״̬"+Resourceslist.get(0).getState());
				 model.addAttribute("alldetails",alldetails);
				 model.addAttribute("Resourceslist", Resourceslist);
		
		return "resource";
	}
	
	@RequestMapping("showOneResource")
	public String showOneResource(Model model,Integer resourceid) {
		//����Ԥ��������id��ȡ��Դ����Դ����
	Resources resource = resourceService.findresourcebyid(resourceid);//�õ���Դ��
	List<Resourcesdetails> detaillist = resourceService.findresourcedetails(resourceid);//�õ���Դ������
		model.addAttribute("resource", resource);
		model.addAttribute("detaillist", detaillist);
		System.out.println(detaillist.get(0).getFreshProduct().getProductname());
		return "resourcePreviewing";
	}
	
	@RequestMapping("getResourceBybill")
	@ResponseBody
	public List<FreshProduct> findResourceBybill(FreshProduct freshproduct){
		 System.out.println(freshproduct.getProductname());
		List<FreshProduct> freshlist = freshProductService.findResourceBybill(freshproduct);
		System.out.println("��Ʒ����"+freshlist.size());
		
		return freshlist;
}
	
	@RequestMapping("newbidding")
	@ResponseBody
	public Map<String,Resourcesdetails> addBidding(Integer productid) {
		Map<String,Resourcesdetails> map = new HashMap<String,Resourcesdetails>();
		//���ݲ�Ʒid��ѯ��Դ�����
		System.out.println(productid);
		Resourcesdetails detail = freshProductService.finddetailBypid(productid);
		
		map.put("detail",detail);
		return map;
	}
	
	
}
