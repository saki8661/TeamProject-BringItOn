package com.example.teamprojectbringiton.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    @GetMapping("/kakako-login")
    public  String kakaoLogin(){
        return "user/kakaoLoginPage";
    }

    @GetMapping("/join")
    public  String join(){
        return "/user/joinPage";
    }

    @GetMapping("/login")
    public  String login(){
        return "/user/loginPage";
    }

    @GetMapping("/league-main")
    public String leagueMain(){
        return "league/leagueMain";
    }

    @GetMapping("/league-detail")
    public String leagueDetail(){
        return "league/leagueDetail";
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
