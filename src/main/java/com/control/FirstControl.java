package com.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pojo.ProductClass;
import com.service.ProductClassService;



@Controller
@RequestMapping("/")
public class FirstControl {

	@Autowired
	private ProductClassService productclassservice;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String firstpage() {
		return "redirect:firstpage";
	}
	
	@RequestMapping("firstpage")
	public String findForFirstPage(Model model) {
		System.out.println("Ö´ÐÐfindForFirstPage·½·¨...");
		List<ProductClass> productclasslist = productclassservice.findAllProductClass();
		System.out.println(productclasslist);
		model.addAttribute("productclasslist", productclasslist);
		return "index";
	}
}
