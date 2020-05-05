package com.example.betest.service;

import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class MapperService {

    private ModelMapper modelMapper = new ModelMapper();

    public <T> T to(Object value, Class<T> clazz) {
        if (value != null) {
            return this.modelMapper.map(value, clazz);
        }
        return null;
    }

    public <T> List<T> toList(List<?> list, Class<T> clazz) {
        if (list != null) {
            return list.stream().map(v -> this.to(v, clazz)).collect(Collectors.toList());
        }
        return null;
    }
}
