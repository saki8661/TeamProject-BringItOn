package com.example.teamprojectbringiton._core.utils;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.http.HttpStatus;

@Getter
@Setter
public class ApiUtils<T> {
    private boolean sucuess; // true
    private T data; // 댓글쓰기 성공

    public ApiUtils(boolean sucuess, T data) {
        this.sucuess = sucuess;
        this.data = data;
    }
}