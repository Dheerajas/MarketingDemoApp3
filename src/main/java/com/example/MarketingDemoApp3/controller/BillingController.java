package com.example.MarketingDemoApp3.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.MarketingDemoApp3.entity.Billing;
import com.example.MarketingDemoApp3.entity.Product;
import com.example.MarketingDemoApp3.repository.ProductRepository;
import com.example.MarketingDemoApp3.services.BillingService;

@Controller
public class BillingController {

	@Autowired
	private BillingService billingService;
	
	@Autowired
	private ProductRepository productRepo;
	@RequestMapping("/createBill")
	public String generateBill(@ModelAttribute("bill")Billing bill,ModelMap modelMap,@ModelAttribute("product")Product product) {
		Billing billing=billingService.generateBill(bill);
		product.setProductName(billing.getProductName());
		product.setPrice(billing.getPrice());
		productRepo.save(product);
		modelMap.addAttribute("billing", billing);
		return "bill_report";
		
	}
}
