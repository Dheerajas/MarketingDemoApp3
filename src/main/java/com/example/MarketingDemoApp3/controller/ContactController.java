package com.example.MarketingDemoApp3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.MarketingDemoApp3.entity.Contact;
import com.example.MarketingDemoApp3.services.ContactService;

@Controller
public class ContactController {

	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/contacts")
	public String listContacts(Contact contact,ModelMap modelMap) {
		List<Contact> listContacts = contactService.listContacts(contact);
		modelMap.addAttribute("contacts", listContacts);
		return "list_contacts";
	}
	
	@RequestMapping("/findContactById")
	public String findContactById(@RequestParam("id")Long id,ModelMap modelMap) {
		Contact contacts = contactService.contactById(id);
		modelMap.addAttribute("contacts", contacts);
		return "info_contact";
	}
	
	@RequestMapping("/billsById")
	public String createBill(@RequestParam("id")Long id,ModelMap modelMap) {
		Contact contact = contactService.contactById(id);
		modelMap.addAttribute("contact", contact);
		return "create_bill";
	}
	
	@RequestMapping("/deleteContactById")
	public String deleteContact(@RequestParam("id")Long id,@ModelAttribute("contact")Contact contact,ModelMap modelMap) {
		contactService.deleteContact(id);
		List<Contact> listContacts = contactService.listContacts(contact);
		modelMap.addAttribute("contacts", listContacts);
		return "list_contacts";
	}
}
