package com.example.teamprojectbringiton.campaign;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Campaigns {
    private Integer campaignId;
    private String campaignPic;
    private String campaignName;
    private Date campaignPeriod;
    private String campaignAddress;
}
