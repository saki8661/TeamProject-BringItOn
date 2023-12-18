package com.example.teamprojectbringiton.user;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.utils.Function;
import com.example.teamprojectbringiton.user.dto.request.JoinDTO;
import com.example.teamprojectbringiton.user.dto.request.LoginDTO;
import com.example.teamprojectbringiton.user.dto.request.UserUpdatePasswordDTO;
import com.example.teamprojectbringiton.user.dto.request.UserUpdateImageDTO;
import com.example.teamprojectbringiton.user.dto.response.CheckPasswordDTO;
import com.example.teamprojectbringiton.user.dto.response.KakaoProfile;
import com.example.teamprojectbringiton.user.dto.response.OAuthToken;
import com.example.teamprojectbringiton.user.dto.response.UserPointDTO;
import com.example.teamprojectbringiton.user.dto.response.UserTeamInfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Value("${TENCO_KEY}")
    private String tencoKey;

    @Value("${LOGIN_REST_API_KEY}")
    private String key;

    @Autowired
    private Function function;

    @Transactional
    public User usernameCheck(String username) {
        User user = userRepository.findByUsername(username);
        return user;
    }

    @Transactional

    public void userSave(JoinDTO dto) {
        System.out.println("서비스 진입");
        //회원가입 db에 insert
        User user = User.builder()
                .username(dto.getUsername())
                .password(dto.getPassword())
                .userEmail(dto.getUserEmail())
                .userPhoneNumber(dto.getUserPhoneNumber())
                .userAddress("")
                .userDivision(dto.getUserDivision())
                .nickName("")
                .userPicUrl("default_profile.jpg")
                .build();
        userRepository.insert(user);
    }

    // 카카오 회원가입
    @Transactional
    public void kakaoUserSave(KakaoProfile kakaoProfile) {
        System.out.println("카카오 프로필 서비스 왔어 : " + kakaoProfile.getId());

        // 회원 정보 확인
        User userSearch = userRepository.findByUsername(kakaoProfile.getId());
        System.out.println("프로필 조회 잘했어 : " + userSearch);
        if (userSearch == null) {
            User user = User.builder()
                    .username(kakaoProfile.getId())
                    .password(tencoKey)
                    .userEmail("kakao@naver.com")
                    .userPhoneNumber("010-0000-0000")
                    .userAddress("")
                    .userDivision("게스트")
                    .nickName(kakaoProfile.getProperties().getNickname())
                    .userPicUrl(kakaoProfile.getProperties().getProfileImage() != null ? kakaoProfile.getProperties().getProfileImage() : "default_profile.jpg")
                    .build();
            userRepository.insert(user);
        }


    }

    public User findById(Integer id) {
        User user = userRepository.findById(id);
        return user;
    }


    public User login(LoginDTO loginDto) {
        User user = userRepository.findByUsernameAndPassword(loginDto);
        // 사용자가 보낸 로그인 정보가 있는지 확인 없으면 alert 창을 띄움
        if (user == null) {
            throw new CustomRestfullException("아이디와 비번이 일치하지 않습니다.", HttpStatus.BAD_GATEWAY);
        }
        return user;
    }


    public UserTeamInfoDTO findByIdWithTeam(Integer id) {
        return userRepository.findByIdJoinTeam(id);
    }


    public User findByUsername(String username) {
        User user = userRepository.findByUsername(username);
        return user;
    }

    // 토큰 요청을 위한 로직
    public KakaoProfile tokenRequest(String code) {
        RestTemplate rt1 = new RestTemplate();

        // 헤더 구성
        HttpHeaders headers1 = new HttpHeaders();
        headers1.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        // body 구성
        MultiValueMap<String, String> params1 = new LinkedMultiValueMap<>();
        params1.add("grant_type", "authorization_code");
        params1.add("client_id", key);
        params1.add("redirect_uri", "http://localhost:80/kakao-callback");
        params1.add("code", code);

        // 헤더 + body 결합
        HttpEntity<MultiValueMap<String, String>> requestMsg1 = new HttpEntity<>(params1, headers1);

        // 요청 처리
        ResponseEntity<OAuthToken> response1 = rt1.exchange("https://kauth.kakao.com/oauth/token", HttpMethod.POST,
                requestMsg1, OAuthToken.class);

        RestTemplate rt2 = new RestTemplate();
        // 헤더 구성
        HttpHeaders headers2 = new HttpHeaders();
        headers2.add("Authorization", "Bearer " + response1.getBody().getAccessToken());
        headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        // 바디 구성 - 필수가 아님으로 생략
        // 헤더 바디 결합
        HttpEntity<MultiValueMap<String, String>> requestMsg2 = new HttpEntity<>(headers2);

        // 요청
        ResponseEntity<KakaoProfile> response2 = rt2.exchange("https://kapi.kakao.com/v2/user/me", HttpMethod.POST,
                requestMsg2, KakaoProfile.class);

        return response2.getBody();
    }


    // 개인정보 수정을 위한 패스워드 확인
    public CheckPasswordDTO pwdCheck(String password, Integer id) {
        // 비밀번호 비교를 위한 유저 정보 조회
        User user = userRepository.findById(id);
        // 비밀번호 비교해서 값 보내기
        if (user.getPassword().equals(password)) {
            return new CheckPasswordDTO(id, true);
        }
        return new CheckPasswordDTO(id, false);
    }

    // 프로필 이미지 업뎃
    @Transactional
    public User userUpdateImage(UserUpdateImageDTO dto, User sessionUser) {
        User user = userRepository.findById(sessionUser.getId());

        String fileName = function.saveImage(dto.getPic());

        user.updateUserPicUrl(fileName);
        userRepository.userUpdateImage(user);
        return user;
    }

    @Transactional
    public User userUpdatePassword(UserUpdatePasswordDTO dto, Integer id) {
        User user = userRepository.findById(id);
        user.updatePassword(dto.getPassword());
        userRepository.userUpdatePassword(user);
        return user;
    }

    public UserPointDTO findByIdJoinPoint(Integer id) {
        UserPointDTO dto = userRepository.findByIdJoinPoint(id);
        return dto;
    }
}