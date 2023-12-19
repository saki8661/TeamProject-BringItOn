package com.example.teamprojectbringiton.user;

public class AddressParer {
    public static String parseCity(String address) {
        // 실제 주소 파싱 로직을 구현
        // 여기에서는 앞에서부터 5번째까지 추출하는 간단한 예제를 제시합니다.
        if (address.length() >= 6) {
            return address.substring(0, 6);
        } else {
            return address;
        }
    }
}
