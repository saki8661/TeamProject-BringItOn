package com.example.teamprojectbringiton.inquire;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.inquire.dto.request.InquireUpdateDTO;
import com.example.teamprojectbringiton.inquire.dto.request.InquireWriteDTO;
import com.example.teamprojectbringiton.inquire.dto.response.InquireListDTO;
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

    // 문의 목록 보기 기능
    public List<InquireListDTO> inquireList() {
        return inquireRepository.findAllJoinCategory();
    }

    // 문의목록 불러오기
    public List<InquireCategory> inquireCategoryList() {
        return inquireCategoryRepository.findAll();
    }


    // 문의작성하기
    public void inquireWrite(InquireWriteDTO dto, Integer principalId) {
        Inquire inquire = Inquire.builder()
                .inquireTitle(dto.getInquireTitle())
                .inquireContent(dto.getInquireContent())
                .inquireCategoryId(dto.getInquireCategoryId())
                .userId(principalId)
                .build();

        int inquireWrite = inquireRepository.insert(inquire);
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + dto.getInquireTitle());
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + dto.getInquireContent());
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + dto.getInquireCategoryId());
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + principalId);
        if (inquireWrite != 1) {
            throw new CustomRestfullException("공지 등록 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // 문의수정하기
    public int inquireUpdate(InquireUpdateDTO dto, Integer principalId) {
        Inquire inquire = Inquire.builder()
                .id(dto.getId())
                .inquireTitle(dto.getInquireTitle())
                .inquireContent(dto.getInquireContent())
                .inquireCategoryId(dto.getInquireCategoryId())
                .userId(principalId)
                .build();

        int inquireUpdate = inquireRepository.updateById(inquire);
        if(inquireUpdate != 1){
            throw new CustomRestfullException("문의 수정 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return inquireUpdate;
    }

    // 문의삭제하기
    public int deleteById(Integer id){
        int inquireDelete = inquireRepository.deleteById(id);
        System.out.println("@@@@@@@@@@@@@컨트롤러 호출됨1");
        if (inquireDelete != 1) {
            throw  new CustomRestfullException("문의 삭제 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        System.out.println("@@@@@@@@@@@@@서비스 호출됨2");
        return  inquireDelete;
    }


}
