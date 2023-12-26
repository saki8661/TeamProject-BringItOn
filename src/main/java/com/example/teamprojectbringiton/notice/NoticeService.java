package com.example.teamprojectbringiton.notice;


import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.notice.dto.request.NoticeUpdateDTO;
import com.example.teamprojectbringiton.notice.dto.request.NoticeWriteDTO;
import com.example.teamprojectbringiton.notice.dto.response.NoticeListDTO;
import com.example.teamprojectbringiton.notice.noticeCategory.NoticeCategory;
import com.example.teamprojectbringiton.notice.noticeCategory.NoticeCategoryRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeService {

    @Autowired
    private NoticeRepository noticeRepository;

    @Autowired
    private NoticeCategoryRepository noticeCategoryRepository;

    @Autowired
    private HttpSession session;

    // 공지 목록 보기 기능
    public List<NoticeListDTO> noticeList() {
        return noticeRepository.findAllJoinCategory();
    }


    public List<NoticeCategory> noticeCategoryList() {
        return noticeCategoryRepository.findAll();
    }

    public void noticeWrite(NoticeWriteDTO dto, Integer principalId) {
        Notice notice = Notice.builder()
                .noticeTitle(dto.getNoticeTitle())
                .noticeContent(dto.getNoticeContent())
                .noticeCategoryId(dto.getNoticeCategoryId())
                .userId(principalId)
                .build();
        System.out.println(dto.getNoticeContent()+"공지글@@@@@@@@@@@@@@@@@@@@@@@@@@");
        System.out.println(dto.getNoticeTitle()+"공지제목@@@@@@@@@@@@@@@@@@@@@@@@@@");
        System.out.println(dto.getNoticeCategoryId()+"공지카테고리@@@@@@@@@@@@@@@@@@@@@@@@@@");
        System.out.println(principalId+"작성아이디@@@@@@@@@@@@@@@@@@@@@@@@@@");
        int noticeWrite = noticeRepository.insert(notice);

        if (noticeWrite != 1) {
            throw new CustomRestfullException("공지 등록 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public int noticeUpdate(NoticeUpdateDTO dto, Integer principalId) {
        Notice notice = Notice.builder()
                .id(dto.getId())
                .noticeTitle(dto.getNoticeTitle())
                .noticeContent(dto.getNoticeContent())
                .noticeCategoryId(dto.getNoticeCategoryId())
                .userId(principalId)
                .build();

        int noticeUpdate = noticeRepository.updateById(notice);
        if (noticeUpdate != 1) {
            throw new CustomRestfullException("공지 수정 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return noticeUpdate;
    }


    public int deleteById(Integer id) {

        int noticeDelete = noticeRepository.deleteById(id);
        if (noticeDelete != 1) {
            throw new CustomRestfullException("공지 삭제 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return noticeDelete;
    }



}
