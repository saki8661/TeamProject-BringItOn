package com.example.teamprojectbringiton.mail;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import com.example.teamprojectbringiton.user.User;
import com.example.teamprojectbringiton.user.UserRepository;
import com.example.teamprojectbringiton.user.UserService;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Random;

@Service
public class MailService {

    @Autowired
    private JavaMailSender mailSender;
    private int authNumber;

    @Autowired
    private UserRepository userRepository;


    //임의의 6자리 양수를 반환합니다.
    public void makeRandomNumber() {
        Random r = new Random();
        String randomNumber = "";
        for (int i = 0; i < 6; i++) {
            randomNumber += Integer.toString(r.nextInt(10));
        }

        authNumber = Integer.parseInt(randomNumber);
    }

    @Transactional
    //mail을 어디서 보내는지, 어디로 보내는지 , 인증 번호를 html 형식으로 어떻게 보내는지 작성합니다.
    public void joinEmail(String email) {

        makeRandomNumber();
        String setFrom = "djsdir0106@gmail.com"; // email-config에 설정한 자신의 이메일 주소를 입력
        String toMail = email;
        String title = "[Bring It On] 회원 가입 인증 이메일 입니다."; // 이메일 제목
        String content =
                "Bring It On을 방문해주셔서 감사합니다." +    //html 형식으로 작성 !
                        "<br><br>" +
                        "인증 번호는 " + authNumber + "입니다." +
                        "<br>" +
                        "인증번호를 제대로 입력해주세요"; //이메일 내용 삽입
        mailSend(setFrom, toMail, title, content);
    }


    @Transactional
    //이메일을 전송합니다.
    public void mailSend(String setFrom, String toMail, String title, String content) {
        System.out.println("이메일 전송 시작");
        MimeMessage message = mailSender.createMimeMessage();//JavaMailSender 객체를 사용하여 MimeMessage 객체를 생성
        System.out.println("메세지 작성 : " + message);
        try {
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");//이메일 메시지와 관련된 설정을 수행합니다.
            // true를 전달하여 multipart 형식의 메시지를 지원하고, "utf-8"을 전달하여 문자 인코딩을 설정
            helper.setFrom(setFrom);//이메일의 발신자 주소 설정
            helper.setTo(toMail);//이메일의 수신자 주소 설정
            helper.setSubject(title);//이메일의 제목을 설정
            helper.setText(content, true);//이메일의 내용 설정 두 번째 매개 변수에 true를 설정하여 html 설정으로한다.
            mailSender.send(message);
            System.out.println("전송완료");
        } catch (Exception e) {//이메일 서버에 연결할 수 없거나, 잘못된 이메일 주소를 사용하거나, 인증 오류가 발생하는 등 오류
            // 이러한 경우 MessagingException이 발생
            e.printStackTrace();//e.printStackTrace()는 예외를 기본 오류 스트림에 출력하는 메서드
        }

    }

    public Boolean checkEmail(Integer verifyNumber) {
        if (verifyNumber == authNumber) {
            return true;
        } else {
            return false;
        }

    }


    public int emailCheck(String email) {
        User user = userRepository.findByUserEmail(email);
        if (user != null) {
            System.out.println("이메일 중복됨");
            return 2;
        } else {
            System.out.println("이메일 중복 안됨");
            return 1;
        }
    }


    public void passwordEmail(String email) {
        System.out.println("email이 존재할까?");
        User user = userRepository.findByUserEmail(email);
        System.out.println("유저 정보가 왜 조회가 안되?" + user);
        if (user == null) {
            System.out.println("쓰로우 전");
            throw new CustomRestfullException("없는 이메일 입니다.", HttpStatus.BAD_REQUEST);
        } else {
            makeRandomNumber();
            String setFrom = "djsdir0106@gmail.com"; // email-config에 설정한 자신의 이메일 주소를 입력
            String toMail = email;
            String title = "[Bring It On] 변경된 패스워드 입니다."; // 이메일 제목
            String content =
                    "Bring It On을 이용해주셔서 감사합니다." +    //html 형식으로 작성 !
                            "<br><br>" +
                            "변경된 비밀번호는 " + authNumber + "입니다." +
                            "<br>" +
                            "비밀번호를 입력하시고 개인정보 수정에서 수정해주세요"; //이메일 내용 삽입
            mailSend(setFrom, toMail, title, content);
        }

    }

    @Transactional
    public User passwordUpdate(String email) {
        System.out.println("패스워드 업데이트 진입 : " + email);
        User user = userRepository.findByUserEmail(email);
        System.out.println("유저정보 조회하기 : " + email);
        user.updatePassword(Integer.toString(authNumber));
        userRepository.userUpdatePassword(user);
        return user;
    }
}