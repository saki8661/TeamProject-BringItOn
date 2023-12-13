package com.example.teamprojectbringiton.notice;

import com.example.teamprojectbringiton.notice.dto.reqDto.NoticeWriteDto;
import com.example.teamprojectbringiton.notice.dto.respDto.NoticeListDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeRepository {

    public int insert(Notice notice);

    public int updateById(Notice notice);

    public int deleteById(Integer id);

    public List<Notice> findAll();

    public List<NoticeListDto> findAllJoinCategory();

    public Notice findByNoticeCategoryId(String number);

    public Notice findByNoticeId(Integer id);
}
