package com.example.teamprojectbringiton.FCM;

import com.example.teamprojectbringiton.FCM.dto.NotificationDTO;
import com.example.teamprojectbringiton.user.User;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.Message;
import com.google.firebase.messaging.WebpushConfig;
import com.google.firebase.messaging.WebpushNotification;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

@Service
public class FCMService {

    private static final Logger logger = LoggerFactory.getLogger(FCMService.class);

    private final Map<Integer, String> tokenMap = new HashMap<>();

    public void send(final NotificationDTO notificationDTO) throws InterruptedException, ExecutionException {
        Message message = Message.builder()
                .setToken(notificationDTO.getToken())
                .setWebpushConfig(WebpushConfig.builder().putHeader("ttl", "300")
                        .setNotification(new WebpushNotification(notificationDTO.getTitle(),
                                notificationDTO.getMessage()))
                        .build())
                .build();

        String response = FirebaseMessaging.getInstance().sendAsync(message).get();
        logger.info("Sent message: " + response);
    }

    public void register(Integer id, String token) {
        tokenMap.put(id, token);
    }

}