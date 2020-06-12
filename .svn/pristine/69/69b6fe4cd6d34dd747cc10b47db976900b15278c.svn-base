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
		//根据pid查询商品
		/*
		 * 传进来一个resource,新增一个资源表传进gid，多个资源详情表和多个商品也就是pid
		 */
		System.out.println("添加资源");
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
		
		//添加资源，只需要一个，添加后获取id
		resource.setGiveuser(giveuser);
		resourceService.addResource(resource);
		
		for (int i = 0; i < sf.length; i++) {
			System.out.println("sf期货/现货："+sf[i]);
			FreshProduct freshproduct = new FreshProduct(-1,productname[i],originplace[i],Specifications[i],grade[i],Integer.parseInt(inventory[i]),storehouse[i],Double.parseDouble(price[i]),sf[i],Integer.parseInt(classid[i]),giveuser);
			//添加商品
			freshProductService.addfresh(freshproduct);
			
			//添加详情，需要资源表id，商品id，
			Resourcesdetails resourcesdetails = new Resourcesdetails(-1,resource,freshproduct,freshproduct.getInventory());
			resourceService.addResourcedetail(resourcesdetails);
			
		}
		//添加完成跳转到查询所有页面
		return "redirect:/sup/getResource";
	}
	
	//查询出资源进行会员中心展示
	@RequestMapping("getResource")
	public String getResource(Model model,HttpSession session) {
		System.out.println("跳转到查询资源控制器");
		Giveuser guser = (Giveuser) session.getAttribute("giveuser");
		if(guser==null) {
			guser = new Giveuser();
			guser.setGid(1);
		}
		List<Resources> Resourceslist = resourceService.findresource(guser.getGid());//得到资源单
		
		//根据资源单id获取到资源详情集合，再通过装到资源详情集合中
		List<List<Resourcesdetails>> alldetails = new ArrayList<List<Resourcesdetails>>();
		for (int i = 0; i < Resourceslist.size(); i++) {
		Integer resourcesid = Resourceslist.get(i).getResourcesid();//获取资源单id
			
		List<Resourcesdetails> detaillist =	resourceService.findresourcedetails(resourcesid);//每个资源表下面的资源详情
		
		alldetails.add(detaillist);//将所有详情添加到一个list集合中
		}
		//System.out.println("所有的资源详情"+alldetails.get(0).get(0).getFreshProduct().getClassid());
		//System.out.println("订单状态"+Resourceslist.get(0).getState());
		 model.addAttribute("alldetails",alldetails);
		 model.addAttribute("Resourceslist", Resourceslist);
		 
		return "menmber-mysupply";
	}
	
	
	
	@RequestMapping("showResource")
	public String showResource(Model model) {
		/*
		 * 首页资源单展示，查找出所有资源单并进行显示
		 */
		List<Resources> Resourceslist = resourceService.findAllResource();//得到资源单
		
		//根据资源单id获取到资源详情集合，再通过装到资源详情集合中
				List<List<Resourcesdetails>> alldetails = new ArrayList<List<Resourcesdetails>>();
				for (int i = 0; i < Resourceslist.size(); i++) {
				Integer resourcesid = Resourceslist.get(i).getResourcesid();//获取资源单id
					
				List<Resourcesdetails> detaillist =	resourceService.findresourcedetails(resourcesid);//每个资源表下面的资源详情
				
				alldetails.add(detaillist);//将所有详情添加到一个list集合中
				}
				System.out.println("所有的资源详情"+alldetails.get(0).get(0).getFreshProduct().getClassid());
				System.out.println("订单状态"+Resourceslist.get(0).getState());
				 model.addAttribute("alldetails",alldetails);
				 model.addAttribute("Resourceslist", Resourceslist);
		
		return "resource";
	}
	
	@RequestMapping("showOneResource")
	public String showOneResource(Model model,Integer resourceid) {
		//快速预览，根据id获取资源和资源详情
	Resources resource = resourceService.findresourcebyid(resourceid);//得到资源单
	List<Resourcesdetails> detaillist = resourceService.findresourcedetails(resourceid);//得到资源单详情
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
		System.out.println("产品个数"+freshlist.size());
		
		return freshlist;
}
	
	@RequestMapping("newbidding")
	@ResponseBody
	public Map<String,Resourcesdetails> addBidding(Integer productid) {
		Map<String,Resourcesdetails> map = new HashMap<String,Resourcesdetails>();
		//根据产品id查询资源详情表
		System.out.println(productid);
		Resourcesdetails detail = freshProductService.finddetailBypid(productid);
		
		map.put("detail",detail);
		return map;
	}
	
	
}
