package com.example.teamprojectbringiton._core.utils;


import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.vo.MyPath;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

@Component
public class Function {

    // 회원정보보기 이미지 저장 함수
    public String saveImage(MultipartFile imageFile) {
        UUID uuid = UUID.randomUUID();
        String fileName = uuid + "_" + imageFile.getOriginalFilename();
        Path filePath = Paths.get(MyPath.IMG_PATH + fileName);

        try {
            Files.write(filePath, imageFile.getBytes());
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage());
        }

        return fileName;
    }
}