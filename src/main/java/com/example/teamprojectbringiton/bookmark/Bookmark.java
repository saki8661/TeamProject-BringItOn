package com.example.teamprojectbringiton.bookmark;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Bookmark {
    private Integer id;
    private Integer spaceId;
    private Integer userId;

    @Builder
    public Bookmark(Integer id, Integer spaceId, Integer userId) {
        this.id = id;
        this.spaceId = spaceId;
        this.userId = userId;
    }
}
