package com.example.teamprojectbringiton.board;

import com.example.teamprojectbringiton.board.dto.response.BoardListDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    HttpSession session;

    @Autowired
    BoardService boardService;

    @GetMapping("/board-main")
    public String boardPage(Model model){
        List<BoardListDTO> boards = boardService.boardList();
        model.addAttribute("boards", boards);
        return "board/boardMain";
    }

    @GetMapping("/board-detail/{id}")
    public String boardDetailPage(@PathVariable Integer id){
        boardService.boardDetail(id);
        return "board/boardDetail";
    }
}
