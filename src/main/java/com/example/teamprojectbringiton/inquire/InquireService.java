package com.example.teamprojectbringiton.inquire;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.inquire.dto.reqDto.InquireWriteDto;
import com.example.teamprojectbringiton.inquire.dto.respDto.InquireListDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InquireService {

    @Autowired
    private InquireRepository inquireRepository;

    // 공지 목록 보기 기능
    public List<InquireListDto> inquireList() {
        return inquireRepository.findAllJoinCategory();
    }

    public void inquireWrite(InquireWriteDto dto, Integer principalId) {

        // 문의 등록
        Inquire inquire = Inquire.builder()
                .inquireTitle(dto.getInquireTitle())
                .inquireContent(dto.getInquireContent())
                .createdAt(dto.getCreatedAt())
                .userId(principalId)
                .build();

        int resultRowCount = inquireRepository.insert(inquire);
        if(resultRowCount != 1) {
            throw new CustomRestfullException("문의 등록 실패",
                    HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

}
