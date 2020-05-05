package com.example.betest.dto;

import lombok.Data;

import java.util.Set;


@Data
public class TagDTO {
    private Long id;
    private String name;
    private Set<CustomerDTO> customers;
}
