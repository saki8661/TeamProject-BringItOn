package com.example.teamprojectbringiton.spaceInquire.response;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SpaceInquireCountDTO {
    private Integer spaceId;
    private Integer inquireContent;
}
