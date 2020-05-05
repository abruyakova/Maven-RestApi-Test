package com.example.betest.dto;

import lombok.Data;
import java.util.Set;

@Data
public class CustomerWithAttrsDTO {
    private Long id;
    private String firstName;
    private String lastName;
    private String email;
    private Set<CustomerAttrsDTO> customerAttrsList;
}
