package com.example.teamprojectbringiton.FCM;

import com.example.teamprojectbringiton.user.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class FCMService {

    @Autowired
    private UserRepository userRepository;


}