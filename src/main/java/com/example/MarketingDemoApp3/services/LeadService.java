package com.example.MarketingDemoApp3.services;

import java.util.List;

import com.example.MarketingDemoApp3.entity.Lead;

public interface LeadService {
	public Lead saveLead(Lead lead);
	public List<Lead> findLeads();
	public Lead findLeadById(Long id);
	public Lead updateById(Long id,Lead lead);
	public void deleteLead(Long id);
}
