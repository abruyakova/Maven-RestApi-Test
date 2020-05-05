package com.example.betest.service;

import com.example.betest.entities.Customer;
import com.example.betest.entities.CustomerHistory;
import com.example.betest.entities.Tag;
import com.example.betest.repository.CustomerHistoryRepository;
import com.example.betest.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.time.temporal.ChronoUnit;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private CustomerHistoryRepository customerHistoryRepository;

    private static final String SORT_BY = "lastName";

    public List<Customer> getAllCustomers(Integer pageNo, Integer pageSize) {

        Pageable pageable = PageRequest.of(pageNo, pageSize, Sort.by(SORT_BY));
        Page<Customer> customerPage = customerRepository.findAll(pageable);
        if (customerPage.hasContent()) {
            return customerPage.getContent();
        } else {
            return null;
        }
    }

    public List<Customer> getAllCustomers() {
        List<Customer> customers = customerRepository.findAll();
        return customers;
    }


    public Map<String, Double> getAverageTime() {
        List<Customer> customers = getAllCustomers();
        Map<String, List<Long>> temp = new HashMap<>();
        customers.stream().forEach(i -> calc(i.getCustomerHistories(), temp));

        Map<String, Double> results = temp.entrySet().stream().collect(
                Collectors.toMap(
                        Map.Entry::getKey,
                        i -> i.getValue().stream().mapToLong(Long::longValue).average().getAsDouble())
        );
        return results;
    }

    private void calc(Set<CustomerHistory> hist, Map<String, List<Long>> result) {
        if (hist != null && result != null) {
            hist.stream().filter(i -> Objects.nonNull(i.getCustomerStatus())).sorted(Comparator.comparingInt(i->i.getCustomerStatus().getLevel())).reduce((h1, h2) -> {
                result.compute(h1.getCustomerStatus().getName() + "_" + h2.getCustomerStatus().getName(), (k, v) -> {
                    List val = v != null ? v : new ArrayList();
                    val.add(Long.valueOf(h1.getDateTime().until(h2.getDateTime(), ChronoUnit.HOURS)));
                    return val;
                });
                return h2;
            });
        }
    }


}
