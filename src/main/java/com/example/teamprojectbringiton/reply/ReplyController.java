package com.example.teamprojectbringiton.reply;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ReplyController {

    @Autowired
    HttpSession session;

    @Autowired
    ReplyService replyService;
}
