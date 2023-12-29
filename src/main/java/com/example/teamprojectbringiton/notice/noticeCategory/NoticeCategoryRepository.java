package com.example.teamprojectbringiton.notice.noticeCategory;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeCategoryRepository {

        public List<NoticeCategory> findAll();

}
