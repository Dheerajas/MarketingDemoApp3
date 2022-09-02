package com.example.MarketingDemoApp3.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.MarketingDemoApp3.entity.Lead;
import com.example.MarketingDemoApp3.exceptions.LeadNotFoundException;
import com.example.MarketingDemoApp3.repository.LeadRepository;

@Service
public class LeadServiceImpl implements LeadService {

	@Autowired
	private LeadRepository leadRepository;
	
	@Override
	public Lead saveLead(Lead lead) {
	return  leadRepository.save(lead);
	}
	
	@Override
	public List<Lead> findLeads(){
		return leadRepository.findAll(Sort.by("id").descending());
	}
	
	@Override
	public Lead findLeadById(Long id) {
		Optional<Lead> findById = leadRepository.findById(id);
		if(findById.isPresent()) {
			Lead lead = findById.get();
			return lead;
		}else {
			throw new LeadNotFoundException("Product not exists in DB");
		}
	}
	
	@Override
	public Lead updateById(Long id,Lead lead) {
		Lead leadData = leadRepository.findById(id).get();
		leadData.setFirstName(lead.getFirstName());
		leadData.setLastName(lead.getLastName());
		leadData.setEmail(lead.getEmail());
		leadData.setMobile(lead.getMobile());
		leadData.setLeadSource(lead.getLeadSource());
		return leadRepository.saveAndFlush(leadData);
	}
	
	@Override
	public void deleteLead(Long id) {
		leadRepository.deleteById(id);
	}
}
