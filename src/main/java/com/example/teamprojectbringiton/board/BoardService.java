package com.example.teamprojectbringiton.board;

import com.example.teamprojectbringiton.board.dto.response.BoardListDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    @Autowired
    BoardRepository boardRepository;

    public List<BoardListDTO> boardList(){
        return  boardRepository.findAll();
    }

    public int boardDetail(Integer id){
        return  boardRepository.findByJoinReplyId(id);
    }
}
