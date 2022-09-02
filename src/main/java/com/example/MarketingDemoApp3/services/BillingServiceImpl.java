package com.example.MarketingDemoApp3.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MarketingDemoApp3.entity.Billing;
import com.example.MarketingDemoApp3.repository.BillingRepository;

@Service
public class BillingServiceImpl implements BillingService {

	@Autowired
	private BillingRepository billingRepo;

	@Override
	public Billing generateBill(Billing bill) {
		Billing billing = billingRepo.save(bill);
		return billing;
	}
	
	
	
}
