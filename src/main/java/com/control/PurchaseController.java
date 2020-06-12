package com.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pojo.Purchase;
import com.service.PurchaseService;

@Controller
@RequestMapping("/pc")
public class PurchaseController {
	@Autowired
	private PurchaseService purchaseservice;

	/**
	 * ����ɹ�ҳ
	 * 
	 * @return
	 */
	@RequestMapping(value = { "enter", "conduct", "closure" })
	public String enterPurchase(Model model, @RequestParam(defaultValue = "1", required = false) Integer cp,
			@RequestParam(defaultValue = "3", required = false) Integer ps,
			@RequestParam(required = false) Integer purchase_state) {

		int start = (cp - 1) * ps;
		int end = cp * ps;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		System.out.println(purchase_state);
		if (purchase_state != null) {
			map.put("purchase_state", purchase_state);
		}

		List<Purchase> purchaselist = purchaseservice.findPurchasePage(map);

		int count = purchaseservice.findCount(); // ����������
		int totalpage = (count - 1) / ps + 1; // ��ҳ����

		System.out.println(purchaselist);
		System.out.println(count);
		System.out.println(purchaselist);

		model.addAttribute("purchaselist", purchaselist);
		model.addAttribute("cp", cp);
		model.addAttribute("ps", ps);
		model.addAttribute("count", count);
		model.addAttribute("totalpage", totalpage);
		model.addAttribute("purchase_state", purchase_state);

		return "purchase";
	}

	/**
	 * ����ɹ�����ҳ
	 * 
	 * @param purchaseid
	 * @return
	 */
	@RequestMapping(value = "findpurchasebyid", method = RequestMethod.GET)
	public String findPurchaseById(Integer purchaseid, Model model) {

		Purchase purchase = purchaseservice.findPurchaseById(purchaseid);
		model.addAttribute("purchase", purchase);
		if (purchase.getPurchase_state() == 2) { // �����
			return "purchase-details(over)";
		} else {
			return "purchase-details";
		}

	}

	/**
	 * ���뷢����Դ
	 * 
	 * @return
	 */
	@RequestMapping(value = "release")
	public String releasePurchase() {
		System.out.println("ִ��releasePurchase����");
		return "purchase-release";
	}

	/**
	 * ������Դ��
	 * 
	 * @param purchase
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addPurchase(Purchase purchase) {

		System.out.println("����addPurchase����...");
		int count = purchaseservice.addPurchase(purchase);

		return "redirect:/pc/enter";
	}
}
