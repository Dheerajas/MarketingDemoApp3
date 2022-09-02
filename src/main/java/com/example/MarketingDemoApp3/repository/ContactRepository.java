package com.example.MarketingDemoApp3.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.MarketingDemoApp3.entity.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Long> {

}
