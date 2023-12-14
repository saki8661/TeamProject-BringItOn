package com.example.teamprojectbringiton.user;

import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;


import com.example.teamprojectbringiton.user.dto.request.JoinDTO;
import com.example.teamprojectbringiton.user.dto.request.LoginDTO;
import com.example.teamprojectbringiton.user.dto.request.PwdUpdateDTO;

import com.example.teamprojectbringiton.user.dto.response.UserTeamInfoDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private HttpSession session;


    @GetMapping("/kakao-login")

    public String kakaoLogin() {
        System.out.println("카카오로그인 겟");
        return "user/kakaoLoginPage";
    }

    @GetMapping("/join")
    public String join() {
        return "/user/joinPage";
    }

    @PostMapping("/join")
    public String joinProc(JoinDTO dto) {
        userService.userSave(dto);
        return "redirect:/kakako-login";
    }

    @ResponseBody
    @PostMapping("/check")
    public ResponseEntity<String> check(String username) {
        System.out.println("++++++++++++++++++유저네임");
        int user = userService.usernameCheck(username);
        System.out.println("??????????" + user);
        return new ResponseEntity<String>("유저네임을 사용할 수 있습니다", HttpStatus.OK);
    }

    @GetMapping("/login")

    public String loginPage() {
        return "/user/loginPage";
    }

    @PostMapping("/login")

    public String login(LoginDTO loginDto, Model model) {
        User user = userService.login(loginDto);
        session.setAttribute("sessionUser", user);
        model.addAttribute("sessionUser", user);
        User sessionUser = (User) session.getAttribute("sessionUser");
        User sessionUser2 = (User) model.getAttribute("sessionUser");

        System.out.println("로그인 후 user : " + user.getUsername());
        System.out.println("로그인 후 session : " + sessionUser.getUsername());
        System.out.println("로그인 후 model : " + sessionUser2.getPassword());
        return "redirect:/home";
    }

    @GetMapping("/logout")
    public String logout() {

        session.invalidate();
        return "redirect:/home";
    }

    @GetMapping("/user-update/{id}")
    public String userUpdatePage(@PathVariable Integer id, Model model) {

        // 인증 검사 (로그인 유무)
        User principal = (User) session.getAttribute("sessionUser");
        if (principal == null) {
            throw new UnAuthorizedException("로그인을 먼저 해주세요.", HttpStatus.UNAUTHORIZED);
        }

        User user = userService.findById(id);
        model.addAttribute("user", user);

        return "user/userUpdate";
    }

    @PostMapping("/passwordUpdate/{id}")
    public String passwordUpdate(@PathVariable Integer id, PwdUpdateDTO dto) {


        userService.userPwdUpdate(id, dto);

        return "redirect: /kakao-login";
    }

    @GetMapping("/user-team/{id}")
    public String userTeamManagementPage(@PathVariable Integer id, Model model) {
        UserTeamInfoDTO teamInfo = userService.findByIdWithTeam(id);
        model.addAttribute("teamInfo", teamInfo);

        return "user/userTeam";
    }


    @GetMapping("/user-bookmark")

    public String userBookmarkManagementPage() {
        return "user/userBookmark";
    }

    @GetMapping("/user-review")
    public String userReviewManagementPage() {
        return "user/userReview";
    }

    @GetMapping("/user-reservation")
    public String userReservationPage() {
        return "user/userReservation";
    }

    @GetMapping("/user-payment")
    public String userPaymentPage() {
        return "user/userPayment";
    }

    // 리그/매칭 현황 페이지 구현 완료
    @GetMapping("/league-matching-page")
    public String leagueMatchingPage() {
        return "user/leagueMatchingPage";
    }

}