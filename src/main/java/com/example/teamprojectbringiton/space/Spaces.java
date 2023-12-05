package com.example.teamprojectbringiton.space;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Spaces {
    private Integer spaceId;
    private Integer hostId;
    private Integer optionId;
    private String spaceName;
    private String description;
    private Integer locationId;
    private Integer capacity;
    private Integer pricePerHour;
    private Integer avilableHours;
    private Integer sportId;
}
