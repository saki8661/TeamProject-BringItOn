package com.example.teamprojectbringiton.space;


import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class SpacePic {

    private Integer id;
    private String spacePic;
    private String spaceId;

    @Builder
    public SpacePic(Integer id, String spacePic, String spaceId) {
        this.id = id;
        this.spacePic = spacePic;
        this.spaceId = spaceId;
    }

}