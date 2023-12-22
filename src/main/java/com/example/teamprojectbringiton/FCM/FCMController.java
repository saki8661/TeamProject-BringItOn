package com.example.teamprojectbringiton.FCM;

import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FCMController {

    @Autowired
    private HttpSession session;
    private final FCMService fcmService;

    public FCMController(FCMService fcmService) {
        this.fcmService = fcmService;
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody String token) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        fcmService.register(sessionUser.getId(), token);
        return ResponseEntity.ok().build();
    }

}