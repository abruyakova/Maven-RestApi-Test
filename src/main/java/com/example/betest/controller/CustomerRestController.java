package com.example.betest.controller;

import com.example.betest.dto.CustomerDTO;
import com.example.betest.dto.CustomerWithAttrsDTO;
import com.example.betest.dto.TagDTO;
import com.example.betest.entities.Customer;
import com.example.betest.entities.Tag;
import com.example.betest.service.CustomerService;
import com.example.betest.service.MapperService;
import com.example.betest.service.TagService;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/customers")
@Slf4j
public class CustomerRestController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private TagService tagService;

    @Autowired
    private MapperService mapperService;

    @GetMapping()
    public ResponseEntity<List<CustomerWithAttrsDTO>> getAllCustomers(@RequestParam(defaultValue = "0") Integer pageNo,
                                                                          @RequestParam(defaultValue = "10") Integer pageSize){
        List<Customer> customers = customerService.getAllCustomers(pageNo,pageSize);
        return new ResponseEntity(mapperService.toList(customers, CustomerWithAttrsDTO.class), new HttpHeaders(), HttpStatus.OK);
    }

    @GetMapping("/groupby")
    public ResponseEntity getAllCustomersGroupBy(@RequestParam(defaultValue = "false") boolean isGroup){

        if(!isGroup){
            List<Customer> customers =customerService.getAllCustomers();
            return new ResponseEntity(mapperService.toList(customers, CustomerDTO.class),new HttpHeaders(),HttpStatus.OK);
        } else {
            List<Tag> allTags = tagService.getAlltags();
            return new ResponseEntity(mapperService.toList(allTags, TagDTO.class),new HttpHeaders(),HttpStatus.OK);
        }
    }

    @GetMapping("/averageTime")
    public ResponseEntity getAveragetime(){
       Map<String,Double> averageTimeMap = customerService.getAverageTime();
       if (averageTimeMap != null){
           return new ResponseEntity(averageTimeMap,new HttpHeaders(),HttpStatus.OK);
       } else return new ResponseEntity(null,new HttpHeaders(),HttpStatus.NOT_FOUND);
    }
}
