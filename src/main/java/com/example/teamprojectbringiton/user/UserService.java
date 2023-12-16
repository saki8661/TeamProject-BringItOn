package com.example.teamprojectbringiton.user;


import com.example.teamprojectbringiton.user.dto.request.JoinDTO;
import com.example.teamprojectbringiton.user.dto.request.LoginDTO;
import com.example.teamprojectbringiton.user.dto.request.PwdUpdateDTO;
import com.example.teamprojectbringiton.user.dto.response.*;
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
                    .userEmail("")
                    .userPhoneNumber("")
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
        return user;
    }


    public void userPwdUpdate(Integer id, PwdUpdateDTO pwdUpdateDto) {
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

        System.out.println("카카오 로그인 닉네임 : " + response2.getBody().getProperties().getNickname());
        System.out.println("카카오 로그인 사진 : " + response2.getBody().getProperties().getProfileImage());

        return response2.getBody();
    }

    public UserPointDTO findByIdJoinPoint(Integer id){
        UserPointDTO dto = userRepository.findByIdJoinPoint(id);
        return dto;
    }

    public UserInfoDTO findByIdForUserInfo(Integer id) {
        UserInfoDTO user = userRepository.findByIdForUserInfo(id);
        return user;
    }
}