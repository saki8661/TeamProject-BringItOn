package com.example.teamprojectbringiton.space.dto.request;

import com.example.teamprojectbringiton.space.Space;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class SaveDTO {
    private String spaceName;
    private String description;
    private Integer capacity;
    private MultipartFile file;
    private String spacePhoneNumber;
    private Integer price;
    private String sector;
    private String spaceLocation;
    private String bizStartTime;
    private String bizEndTime;
    private Integer sportId;
    private Integer userId;
    private Boolean isInside;

    public Space toEntity() {
        return Space.builder()
                .spaceName(spaceName)
                .description(description)
                .capacity(capacity)
                .spacePhoneNumber(spacePhoneNumber)
                .price(price)
                .sector(sector)
                .spaceLocation(spaceLocation)
                .bizStartTime(bizStartTime)
                .bizEndTime(bizEndTime)
                .sportId(sportId)
                .userId(userId)
                .isInside(isInside)
                .build();
    }
}