package com.example.teamprojectbringiton.handler.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class CustomPageException extends RuntimeException {

    private HttpStatus httpStatus;

    public CustomPageException(String message, HttpStatus status) {
        super(message);
        this.httpStatus = status;
    }

}
