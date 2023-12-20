package com.example.teamprojectbringiton.age;

import com.example.teamprojectbringiton.board.Board;
import com.example.teamprojectbringiton.board.dto.response.BoardDetailDTO;
import com.example.teamprojectbringiton.board.dto.response.BoardListDTO;
import com.example.teamprojectbringiton.user.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.http.converter.json.GsonBuilderUtils;

import java.util.List;

@Mapper
public interface AgeRepository {

    public List<Age> findAll();       // 사용자 전체 조회
}
