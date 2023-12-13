package com.example.teamprojectbringiton.inquire;

import com.example.teamprojectbringiton.inquire.dto.respDto.InquireListDto;
import com.example.teamprojectbringiton.notice.Notice;
import com.example.teamprojectbringiton.notice.dto.respDto.NoticeListDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InquireRepository {

    public int insert(Inquire inquire);

    public int updateById(Inquire inquire);

    public int deleteById(Inquire id);


    public List<InquireListDto> findAllJoinCategory();

}
