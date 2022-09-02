package com.example.MarketingDemoApp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MarketingDemoApp3.entity.Billing;

public interface BillingRepository extends JpaRepository<Billing, Long	> {

}
