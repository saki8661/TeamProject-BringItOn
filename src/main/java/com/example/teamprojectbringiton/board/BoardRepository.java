package com.example.teamprojectbringiton.board;

import com.example.teamprojectbringiton.board.dto.response.BoardDTO;
import com.example.teamprojectbringiton.board.dto.response.BoardDetailDTO;
import com.example.teamprojectbringiton.board.dto.response.BoardListDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardRepository {


    public List<BoardListDTO> findAllJoinUser();


    public List<BoardDetailDTO> findByJoinReplyId(Integer id);


    public int boardInsert(Board board);

    public int deleteById(Integer id);
    
    public  int updateById(Board board);

    public BoardDTO findById(Integer id);
}
