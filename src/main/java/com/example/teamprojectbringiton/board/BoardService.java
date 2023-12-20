package com.example.teamprojectbringiton.board;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.board.dto.request.BoardUpdateDTO;
import com.example.teamprojectbringiton.board.dto.request.BoardWriteDTO;
import com.example.teamprojectbringiton.board.dto.response.BoardDTO;
import com.example.teamprojectbringiton.board.dto.response.BoardDetailDTO;
import com.example.teamprojectbringiton.board.dto.response.BoardListDTO;
import com.example.teamprojectbringiton.reply.ReplyRepository;
import com.example.teamprojectbringiton.reply.dto.response.ReplyDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service
public class BoardService {

    @Autowired
    BoardRepository boardRepository;

    @Autowired
    ReplyRepository replyRepository;

    public List<BoardListDTO> boardList() {
        return boardRepository.findAllJoinUser();
    }

    public BoardDetailDTO boardDetail(Integer id) {
        List<BoardDetailDTO> boardDetailList = boardRepository.findByJoinReplyId(id);

        // 목록에서 첫 번째 객체 가져오기
        BoardDetailDTO boardDetailDTO = boardDetailList.isEmpty() ? null : boardDetailList.get(0);

        if (boardDetailDTO != null) {
            List<ReplyDTO> replies = replyRepository.findRepliesByBoardId(id);
            System.out.println("서비스의 댓글" + replies.size());
            boardDetailDTO.setReplies(replies);
        }

        return boardDetailDTO;
    }

    public void boardWrite(BoardWriteDTO dto) {
        Board board = Board.builder()
                .boardTitle(dto.getBoardTitle())
                .boardContent(dto.getBoardContent())
                .userId(dto.getUserId())
                .build();

        int boardWrite = boardRepository.boardInsert(board);
    }

    public int deleteById(Integer id) {

        int boardDelete = boardRepository.deleteById(id);
        if (boardDelete != 1) {
            throw new CustomRestfullException("게시글 삭제 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        System.out.println("@@@@@@@@@@@@@게시글 삭제 서비스 호출됨2");
        return boardDelete;
    }

    public BoardDTO findById(Integer id) {
        BoardDTO boardDTO = boardRepository.findById(id);
        return boardDTO;
    }

    public int boardUpdate(BoardUpdateDTO dto, Integer id) {
        Board board = Board.builder()
                .id(id)
                .boardTitle(dto.getBoardTitle())
                .boardContent(dto.getBoardContent())
                .userId(dto.getUserId())
                .build();
        int boardUpdate = boardRepository.updateById(board);
        return boardUpdate;
    }
}
