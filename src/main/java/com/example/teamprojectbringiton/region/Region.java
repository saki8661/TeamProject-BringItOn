package com.example.teamprojectbringiton.region;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Region {
    private Integer id;
    private String regionName;

    @Builder
    public Region(Integer id, String regionName) {
        this.id = id;
        this.regionName = regionName;
    }
}
