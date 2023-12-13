package com.example.teamprojectbringiton.notice;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeRepository {

    public int insert(Notice notice);

    public int updateById(Notice notice);

    public int deleteById(Integer id);

    public List<Notice> findAll();

    public Notice findByNoticeCategoryId(String number);
}
