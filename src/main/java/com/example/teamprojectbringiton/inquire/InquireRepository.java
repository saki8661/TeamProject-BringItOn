package com.example.teamprojectbringiton.inquire;


import com.example.teamprojectbringiton.inquire.dto.response.InquireListDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InquireRepository {

    public int insert(Inquire inquire);

    public int updateById(Inquire inquire);

    public int deleteById(Inquire id);


    public List<Inquire> findAll();

    public Inquire findByNoticeCategoryId(String number);


    public List<InquireListDTO> findAllJoinCategory();

}
