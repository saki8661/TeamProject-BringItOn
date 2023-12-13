package com.example.teamprojectbringiton.space.spacePic;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class SpacePic {

    private Integer id;
    private String spacePic;

    @Builder
    public SpacePic(Integer id, String spacePic) {
        this.id = id;
        this.spacePic = spacePic;
    }
}

