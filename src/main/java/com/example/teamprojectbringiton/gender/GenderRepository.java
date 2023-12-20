package com.example.teamprojectbringiton.gender;

import com.example.teamprojectbringiton.age.Age;
import com.example.teamprojectbringiton.board.Board;
import com.example.teamprojectbringiton.board.dto.response.BoardDetailDTO;
import com.example.teamprojectbringiton.board.dto.response.BoardListDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface GenderRepository {

    public List<Gender> findAll();       // 사용자 전체 조회

}
