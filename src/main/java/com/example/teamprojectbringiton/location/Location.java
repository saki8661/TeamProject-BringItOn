package com.example.teamprojectbringiton.location;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Location {
    private Integer id;
    private String locationName;

    @Builder
    public Location(Integer id, String locationName) {
        this.id = id;
        this.locationName = locationName;
    }
}
