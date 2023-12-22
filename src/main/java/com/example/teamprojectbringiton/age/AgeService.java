package com.example.teamprojectbringiton.age;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AgeService {

    @Autowired
    private AgeRepository ageRepository;

    public List<Age> findAll() {
        System.out.println("AGE 서비스 들어왔다");
        return ageRepository.findAll();
    }
}