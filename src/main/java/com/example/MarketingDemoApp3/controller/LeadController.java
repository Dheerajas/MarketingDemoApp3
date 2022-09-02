package com.example.MarketingDemoApp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.MarketingDemoApp3.entity.Contact;
import com.example.MarketingDemoApp3.entity.Lead;
import com.example.MarketingDemoApp3.services.ContactService;
import com.example.MarketingDemoApp3.services.LeadService;

@Controller
public class LeadController {

	@Autowired 
	private LeadService leadService;
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping(value = "/")
	public String showHomePage() {
		return "home";
		
	}
	@RequestMapping(value = "/home")
	public String showPage() {
		return "home";
		
	}
	
	@RequestMapping(value = "/lead")
	public String showLeadPage() {
		return "lead_page";
	}
	
	@RequestMapping("/create")
	public String createLead(@ModelAttribute("lead")Lead lead,ModelMap modelMap ) {
		Lead saveLead = leadService.saveLead(lead);
		modelMap.addAttribute("leads", saveLead);
		return "lead_data";
	}
	
	@RequestMapping("/leadsList")
	public String listLeads(ModelMap modelMap) {
		List<Lead> findLeads = leadService.findLeads();
		modelMap.addAttribute("leads", findLeads);
		return "list_leads";
	}
	
	@RequestMapping("/findById")
	public String getLeadById(@RequestParam("id")Long id,ModelMap modelMap) {
		Lead lead = leadService.findLeadById(id);
		modelMap.addAttribute("leads", lead);
		return "lead_data";
	}
	
	@RequestMapping("/updateById")
	public String updateById(@RequestParam("id")Long id,ModelMap modelMap) {
		Lead lead = leadService.findLeadById(id);
		modelMap.addAttribute("leads", lead);
		return "edit_lead";
	}
	
	@RequestMapping("/update")
	public String updateLeadById(@RequestParam("id") Long id,@ModelAttribute("lead")Lead lead,ModelMap modelMap) {
		Lead leads = leadService.updateById(id, lead);
		modelMap.addAttribute("leads", leads);
		return "lead_data";
	}
	
	@RequestMapping("/convertLead")
	public String convertToContact(@RequestParam("id")Long id,@ModelAttribute("contact")Contact contact,ModelMap modelMap) {
		Lead lead = leadService.findLeadById(id);
		
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setEmail(lead.getEmail());
		contact.setMobile(lead.getMobile());
		contact.setContactSource(lead.getLeadSource());
		contactService.saveContact(contact);
		
		leadService.deleteLead(id); 
		
		List<Contact> listContacts = contactService.listContacts(contact);
		modelMap.addAttribute("contacts", listContacts);
		return "list_contacts";
		
	}
}

