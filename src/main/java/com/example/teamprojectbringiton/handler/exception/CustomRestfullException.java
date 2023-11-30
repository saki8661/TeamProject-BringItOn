package com.example.teamprojectbringiton.handler.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class CustomRestfullException extends RuntimeException{

    private HttpStatus status;

    public CustomRestfullException(String message, HttpStatus httpStatus) {
        super(message); // 부모 생성자 호출
        this.status = httpStatus;
    }

}
