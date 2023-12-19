package com.example.teamprojectbringiton.board;

import com.example.teamprojectbringiton.board.dto.request.BoardWriteDTO;
import com.example.teamprojectbringiton.board.dto.response.BoardDetailDTO;
import com.example.teamprojectbringiton.board.dto.response.BoardListDTO;
import com.example.teamprojectbringiton.user.User;
import io.micrometer.common.util.StringUtils;
import jakarta.servlet.http.HttpSession;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
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

//    @GetMapping("/board-detail/{id}")
//    public String boardDetailPage(@PathVariable Integer id, Model model) {
//        try {
//            System.out.println("담김??@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//            BoardDetailDTO dto = boardService.boardDetail(id);
//            model.addAttribute("dto", dto);
//            System.out.println("모델에 담긴 dto인가?" + dto.getReplies().get(0).getNickName());
//            return "board/boardDetailPage";
//        } catch (Exception e) {
//            e.printStackTrace();  // 스택 트레이스 출력
//            // 예외 처리 또는 다른 작업 수행
//            return "errorPage";  // 에러 페이지로 리다이렉트 또는 에러 메시지를 표시하는 뷰로 이동
//        }
//    }

    @GetMapping("/board-detail/{id}")
    public String boardDetailPage(@PathVariable Integer id, Model model) {
        try {
            System.out.println("담김??@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
            BoardDetailDTO dto = boardService.boardDetail(id);

            // null 체크 및 빈 배열 설정
            if (dto != null) {
                if (dto.getReplies() == null) {
                    dto.setReplies(Collections.emptyList());
                }

                // 제목과 내용이 비어있는 경우 기본값 설정
                if (StringUtils.isBlank(dto.getBoardTitle())) {
                    dto.setBoardTitle("기본 제목");
                }
                if (StringUtils.isBlank(dto.getBoardContent())) {
                    dto.setBoardContent("기본 내용");
                }

                model.addAttribute("dto", dto);
            } else {
                // dto가 null일 경우에 대한 처리
                // 여기에서 빈 dto를 생성하여 반환
                model.addAttribute("dto", new BoardDetailDTO());
            }

            return "board/boardDetailPage";
        } catch (Exception e) {
            e.printStackTrace();  // 스택 트레이스 출력
            // 예외 처리 또는 다른 작업 수행
            System.out.println("리턴될듯????@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
            return "errorPage";  // 예외 발생 시 에러 페이지로 리다이렉트 또는 에러 메시지를 표시하는 뷰로 이동
        }
    }


    @GetMapping("/board-write")
    public String boardWritePage(){
        return "board/boardWritePage";
    }


    @PostMapping("/board-write")
    public String boardWrite(BoardWriteDTO dto) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        System.out.println("1111@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + sessionUser.getId());
        dto.setUserId(sessionUser.getId());
        // HTML 태그 제거
        String plainText = Jsoup.clean(dto.getBoardContent(), Whitelist.none());
        dto.setBoardContent(plainText);
        boardService.boardWrite(dto);
        System.out.println("2222@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + sessionUser.getId());
        return "redirect:/board-main";
    }


    @GetMapping("/board-update/{id}")
    public String boardUpdatePage(@PathVariable Integer id){
        return "board/boardUpdate";
    }

    @GetMapping("/board-delete/{id}")
    public String boardDelete(@PathVariable Integer id){
        boardService.deleteById(id);
        return "redirect:/board-main";
    }
}
