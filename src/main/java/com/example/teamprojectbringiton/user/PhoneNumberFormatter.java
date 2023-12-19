package com.example.teamprojectbringiton.user;

public class PhoneNumberFormatter {

    public static String formatPhoneNumber(String phoneNumber) {
        // 숫자만 남기기
        String numericPhoneNumber = phoneNumber.replaceAll("[^0-9]", "");

        // 일정한 간격에 하이픈 추가
        StringBuilder formattedPhoneNumber = new StringBuilder();
        for (int i = 0; i < numericPhoneNumber.length(); i++) {
            if (i == 3 || i == 7) {
                formattedPhoneNumber.append('-');
            }
            formattedPhoneNumber.append(numericPhoneNumber.charAt(i));
        }

        return formattedPhoneNumber.toString();
    }
}
