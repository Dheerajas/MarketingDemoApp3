package com.example.MarketingDemoApp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.MarketingDemoApp3.entity.Lead;

@Repository
public interface LeadRepository extends JpaRepository<Lead, Long> {

}
