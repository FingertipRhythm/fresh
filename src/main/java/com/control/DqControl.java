package com.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.HatProvince;
import com.service.HatprovinceService;

@Controller
@RequestMapping("/dq")
public class DqControl {

	
	@Autowired
	private  HatprovinceService  his;
	
	@RequestMapping("ssx")
	public String findDq(HttpServletRequest  request,Model model) {
		HatProvince  hpro=  his.findpro();
		//System.out.println(hpro);
		 
		model.addAttribute("hpro",hpro);
		
		return "redirect:/member-gygs";
				
	}
	
	
}
