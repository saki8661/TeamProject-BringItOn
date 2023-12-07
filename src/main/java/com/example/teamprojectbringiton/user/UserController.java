package com.example.teamprojectbringiton.user;

import com.example.teamprojectbringiton._core.handler.MyPageExceptionHandler;
import com.example.teamprojectbringiton.user.dto.reqDTO.JoinFormDto;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private  UserRepository userRepository;

    @Autowired
    private HttpSession session;


    @GetMapping("/kakako-login")
    public  String kakaoLogin(){
        System.out.println("카카오로그인 겟");
        return "user/kakaoLoginPage";
    }

    @GetMapping("/join")
    public  String join(){
        return "/user/joinPage";
    }

    @PostMapping("/join")
    public String joinProc(JoinFormDto dto) {
       userService.userSave(dto);
        return "redirect:/kakako-login";
    }

    @ResponseBody
    @PostMapping ("/check")
    public ResponseEntity<String> check(String username) {
        System.out.println("++++++++++++++++++유저네임");
        int user = userService.usernameChek(username);
        System.out.println("??????????" + user);
        return new ResponseEntity<String>("유저네임을 사용할 수 있습니다", HttpStatus.OK);
    }

    @GetMapping("/login")
    public  String login(){
        return "/user/loginPage";
    }

    @GetMapping("/user-update")
    public String userUpdate(){
        return "user/userUpdate";
    }

    @GetMapping("/user-team")
    public String userTeamManagement(){
        return "user/userTeam";
    }

    @GetMapping("/user-bookmark")
    public String userBookmarkManagement(){
        return "user/userBookmark";
    }

    @GetMapping("/user-review")
    public String userReviewManagement(){
        return "user/userReview";
    }

    @GetMapping("/user-reservation")
    public String userReservation(){
        return "user/userReservation";
    }

    @GetMapping("/user-payment")
    public String userPayment(){
        return "user/userPayment";
    }
}
