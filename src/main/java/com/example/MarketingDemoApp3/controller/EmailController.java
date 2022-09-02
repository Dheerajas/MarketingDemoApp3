package com.example.MarketingDemoApp3.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.MarketingDemoApp3.utility.EmailService;


@Controller
public class EmailController {

	@Autowired
	private EmailService emailService;
	
	@RequestMapping("/compose")
	public String composeEmail(@RequestParam("email") String email,ModelMap modelMap) {
		modelMap.addAttribute("email", email); 
		return "compose_email";
		
	}
	
	@RequestMapping("/sendEmail")
	public String sendEmail(@RequestParam("from") String from,@RequestParam("to") String to,@RequestParam("subject") String subject,@RequestParam("body") String text,ModelMap modelMap) {
		emailService.sendSimpleMessage(from,to, subject, text);
		modelMap.addAttribute("msg", "Email Send Successfully");
		return "compose_email"; 
		
	}
}
