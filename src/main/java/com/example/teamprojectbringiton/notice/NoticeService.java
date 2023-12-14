package com.example.teamprojectbringiton.notice;


import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.notice.dto.request.NoticeUpdateDTO;
import com.example.teamprojectbringiton.notice.dto.request.NoticeWriteDTO;
import com.example.teamprojectbringiton.notice.dto.response.NoticeListDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeService {

    @Autowired
    private NoticeRepository noticeRepository;

    // 공지 목록 보기 기능
    public List<NoticeListDto> noticeList() {
        return noticeRepository.findAllJoinCategory();
    }

    public int noticeWrite(NoticeWriteDTO dto) {
        Notice notice = Notice.builder()
                .noticeTitle(dto.getNoticeTitle())
                .noticeContent(dto.getNoticeContent())
                .noticeCategoryId(dto.getCategoryId())
                .build();
        int noticeWrite = noticeRepository.insert(notice);
        if (noticeWrite != 1) {
            throw new CustomRestfullException("공지 등록 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return noticeWrite;
    }

    public int noticeUpdate(NoticeUpdateDTO dto) {
        Notice notice = Notice.builder()
                .id(dto.getId())
                .noticeTitle(dto.getNoticeTitle())
                .noticeContent(dto.getNoticeContent())
                .noticeCategoryId(dto.getNoticeCategoryId())
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
