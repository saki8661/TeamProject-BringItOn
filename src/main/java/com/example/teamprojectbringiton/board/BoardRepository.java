package com.example.teamprojectbringiton.board;

import com.example.teamprojectbringiton.board.dto.response.BoardListDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardRepository {

    public List<BoardListDTO> findAll();

    public int findByJoinReplyId(Integer id);



}
