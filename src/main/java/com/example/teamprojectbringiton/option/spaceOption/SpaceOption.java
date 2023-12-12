package com.example.teamprojectbringiton.option.spaceOption;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class SpaceOption {
    private Integer id;
    private Integer optionId;
    private Integer spaceId;

    @Builder
    public SpaceOption(Integer id, Integer optionId, Integer spaceId) {
        this.id = id;
        this.optionId = optionId;
        this.spaceId = spaceId;
    }
}
