package com.example.teamprojectbringiton.review.respDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.sql.Timestamp;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SpaceReviewCountDTO {
    private Integer spaceId;
    private Integer reviewCount;
}
