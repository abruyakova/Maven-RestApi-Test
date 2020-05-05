package com.example.betest.repository;

import com.example.betest.entities.CustomerHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.stream.Stream;

@Repository
public interface CustomerHistoryRepository extends JpaRepository<CustomerHistory,Long> {

}
