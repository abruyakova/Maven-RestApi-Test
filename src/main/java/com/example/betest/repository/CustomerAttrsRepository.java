package com.example.betest.repository;

import com.example.betest.entities.CustomerAttrs;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerAttrsRepository extends JpaRepository<CustomerAttrs,Long> {
}
