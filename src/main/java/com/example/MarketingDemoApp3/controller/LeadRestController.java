package com.example.MarketingDemoApp3.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.MarketingDemoApp3.entity.Lead;
import com.example.MarketingDemoApp3.services.LeadService;

@RestController
@RequestMapping("/lead")
public class LeadRestController {

	@Autowired
	private LeadService leadService;
	
	@GetMapping("/fetch/{id}")
	public ResponseEntity<Lead> getLeadById(@PathVariable("id") Long id) {
		Lead findLeadById = leadService.findLeadById(id);
		return new ResponseEntity<>(findLeadById, HttpStatus.OK);
	}
	
	@PostMapping("/create")
	public ResponseEntity<Lead> addLead(@RequestBody Lead lead) {
		Lead saveLead = leadService.saveLead(lead);
		return new ResponseEntity<Lead>(saveLead,HttpStatus.CREATED);
	}
	
	@PutMapping("update/{id}")
	public ResponseEntity<String> updateProduct(@PathVariable("id") Long id, @RequestBody Lead lead) {
		leadService.updateById(id, lead);
		return new ResponseEntity<>("Record is updated in DB", HttpStatus.CREATED);
	}
	
	@DeleteMapping("delete/{id}")
	public ResponseEntity<String> updateProduct(@PathVariable("id") Long id) {
		leadService.deleteLead(id);
		return new ResponseEntity<>("Record is deleted in DB", HttpStatus.OK);
	}


}

