package com.example.teamprojectbringiton.mail.dto.request;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.bind.annotation.GetMapping;

@Getter
@Setter
public class EmailCheckDTO {
    private Integer verifyNumber;
}
