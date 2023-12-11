package com.example.teamprojectbringiton.bank;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Bank {
    private Integer id;
    private String bankName;

    @Builder
    public Bank(Integer id, String bankName) {
        this.id = id;
        this.bankName = bankName;
    }
}
