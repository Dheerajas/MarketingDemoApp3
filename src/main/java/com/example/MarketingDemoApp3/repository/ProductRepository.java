package com.example.MarketingDemoApp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MarketingDemoApp3.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {


}
