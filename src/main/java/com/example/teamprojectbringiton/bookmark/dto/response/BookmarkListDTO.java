package com.example.teamprojectbringiton.bookmark.dto.response;

import lombok.Data;

@Data
public class BookmarkListDTO {
    private Integer id;
    private Integer userId;
    private Integer spaceId;
    private String spaceName;
    private String sector;
    private boolean isInside;
    private String price;
    private String spaceLocation;
    private String spacePic;
    private Integer sportId;
    private String sportName;
}
