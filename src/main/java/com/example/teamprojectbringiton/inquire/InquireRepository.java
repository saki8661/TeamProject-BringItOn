package com.example.teamprojectbringiton.inquire;


import com.example.teamprojectbringiton.inquire.dto.response.InquireListDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InquireRepository {

    public int insert(Inquire inquire);

    public int updateById(Inquire inquire);

    public int deleteById(Integer id);

    public Inquire findByInquireId(Integer id);

    public Inquire findByInquireCategoryId(String number);


    public List<Inquire> findAll();

    public Inquire findByNoticeCategoryId(String number);


    public List<InquireListDTO> findAllJoinCategory();

}
