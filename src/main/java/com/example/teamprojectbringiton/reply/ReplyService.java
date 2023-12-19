package com.example.teamprojectbringiton.reply;

import com.example.teamprojectbringiton.board.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyService {

    @Autowired
    BoardRepository boardRepository;
}
