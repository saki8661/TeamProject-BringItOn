package com.example.teamprojectbringiton.inquire;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.inquire.dto.reqDto.InquireWriteDto;
import com.example.teamprojectbringiton.inquire.dto.respDto.InquireListDto;
import com.example.teamprojectbringiton.inquire.inquireCategory.InquireCategory;
import com.example.teamprojectbringiton.inquire.inquireCategory.InquireCategoryRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InquireService {

    @Autowired
    private InquireRepository inquireRepository;

    @Autowired
    private InquireCategoryRepository inquireCategoryRepository;

    @Autowired
    private HttpSession session;

    // 공지 목록 보기 기능
    public List<InquireListDto> inquireList() {
        return inquireRepository.findAllJoinCategory();
    }

    public List<InquireCategory> inquireCategoryList() {
        return inquireCategoryRepository.findAll();
    }

    public void inquireWrite(InquireWriteDto dto, Integer principalId) {
        Inquire inquire = Inquire.builder()
                .inquireTitle(dto.getInquireTitle())
                .inquireContent(dto.getInquireContent())
                .inquireCategoryId(dto.getInquireCategoryId())
                .userId(principalId)
                .build();

        int inquireWrite = inquireRepository.insert(inquire);
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+ dto.getInquireTitle());
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+ dto.getInquireContent());
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+ dto.getInquireCategoryId());
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+ principalId);
        if(inquireWrite != 1){
            throw new CustomRestfullException("공지 등록 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

}
