package com.example.teamprojectbringiton.admin.dto.request;

import lombok.Data;

@Data
public class UserSearchReqDTO {
    private String category;
    private String keyword;
    private String division;
}
