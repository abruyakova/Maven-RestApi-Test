package com.example.betest.service;

import com.example.betest.entities.Tag;
import com.example.betest.repository.TagRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagService {

    @Autowired
    private TagRepository tagRepository;

    public List<Tag> getAlltags(){
        return tagRepository.findAll();
    }
}
