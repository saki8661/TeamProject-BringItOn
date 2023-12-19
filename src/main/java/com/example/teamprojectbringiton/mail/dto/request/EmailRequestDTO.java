package com.example.teamprojectbringiton.mail.dto.request;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class EmailRequestDTO {
    //그 뒤에 최소한 2개의 알파벳을 가진다를 검증
    private String email;
}
