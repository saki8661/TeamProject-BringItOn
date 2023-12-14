package com.example.teamprojectbringiton.user;

import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;


import com.example.teamprojectbringiton.user.dto.request.JoinDTO;
import com.example.teamprojectbringiton.user.dto.request.LoginDTO;
import com.example.teamprojectbringiton.user.dto.request.PwdUpdateDTO;
import com.example.teamprojectbringiton.user.dto.response.CheckPasswordDTO;
import com.example.teamprojectbringiton.user.dto.response.KakaoProfile;
import com.example.teamprojectbringiton.user.dto.response.UserTeamInfoDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
    private HttpSession session;

    @Value("${LOGIN_REST_API_KEY}")
    private String key;

    @Value("${TENCO_KEY}")
    private String tencoKey;


    @GetMapping("/kakao-login")
    public String kakaoLogin(Model model) {

        System.out.println("카카오로그인 겟");
        model.addAttribute("key", key);
        return "user/kakaoLoginPage";
    }

    @GetMapping("/join")
    public String join() {
        return "/user/joinPage";
    }

    @PostMapping("/join")
    public String joinProc(JoinDTO dto) {
        userService.userSave(dto);
        return "redirect:/login";
    }

    @ResponseBody
    @PostMapping("/check")
    public int check(String username) {
        System.out.println("중복 체크 컨트로러 진입 : " + username);
        User user = userService.usernameCheck(username);
        if (user != null) {
            return 0;
        }
        return 1;
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
        return "redirect:/home";
    }

    // 카카오 로그인
    @GetMapping("/kakao-callback")
    public String kakaoCallBack(@RequestParam String code) {
        System.out.println("카카오 컨트롤러 진입 : " + code);

        // 토큰 요청 서비스 호출
        KakaoProfile kakaoProfile = userService.tokenRequest(code);
        System.out.println("컨트롤러 나왔는대 값은 잘 있지? " + kakaoProfile.getProperties().getNickname());
        // 토큰 확인 후 회원가입 로직 호출
        userService.kakaoUserSave(kakaoProfile);
        // 로그인 로직 처리를 위해 유저정보 조회
        User user = userService.findByUsername(kakaoProfile.getId());

        // 공통된 패스워드 노출 안되게 하기 위해 null
        user.updatePassword("");
        session.setAttribute("sessionUser", user);

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

    @PostMapping("/passwordUpdate")
    public String passwordUpdate(@PathVariable Integer id, PwdUpdateDTO dto) {
        userService.userPwdUpdate(id, dto);
        return "redirect:/kakao-login";
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

    @GetMapping("/user-check-password/{id}")
    public String userCheckPasswordPage(@PathVariable Integer id) {
        User user = userService.findById(id);
        if (user.getPassword().equals(tencoKey)) {
            return "redirect:/user-update/" + id;
        }
        return "user/userCheckPassword";
    }

    @PostMapping("/user-check-password")
    public ResponseEntity<CheckPasswordDTO> userCheckPassword(String checkPassword) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        CheckPasswordDTO response = userService.pwdCheck(checkPassword, sessionUser.getId());
        return ResponseEntity.ok(response);
    }
}