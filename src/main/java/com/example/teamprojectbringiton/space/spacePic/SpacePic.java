package com.example.teamprojectbringiton.space.spacePic;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class SpacePic {

    private Integer id;
    private String spacePic;
    private Integer spaceId;

    @Builder
    public SpacePic(Integer id, String spacePic, Integer spaceId) {
        this.id = id;
        this.spacePic = spacePic;
        this.spaceId = spaceId;
    }
}

