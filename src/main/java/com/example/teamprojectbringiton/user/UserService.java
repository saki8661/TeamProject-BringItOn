package com.example.teamprojectbringiton.user;

import com.example.teamprojectbringiton._core.handler.MyPageExceptionHandler;
import com.example.teamprojectbringiton._core.handler.exception.CustomPageException;
import com.example.teamprojectbringiton.user.dto.reqDTO.JoinFormDto;
import com.example.teamprojectbringiton.user.dto.reqDTO.SignInFormDto;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Transactional
    public int usernameChek(String username) {
        int user = userRepository.findByUsername(username);
        if (user != 1) {
            throw  new CustomPageException("유저네임이 중복 되었습니다", HttpStatus.BAD_REQUEST);
        }
        return user;
    }

    @Transactional
    public int userSave(JoinFormDto dto){
        System.out.println("서비스 진입");
        //회원가입 db에 insert
        Users user = Users.builder()
                .username(dto.getUsername())
                .password(dto.getPassword())
                .userEmail(dto.getUserEmail())
                .userPhoneNumber(dto.getUserPhoneNumber())
                .userAddress(dto.getUserAddress())
                .isAdmin(dto.isAdmin())
                .build();
       int resultRowCount = userRepository.insert(user);

       if(resultRowCount != 1) {throw new CustomPageException("회원 가입 실패", HttpStatus.INTERNAL_SERVER_ERROR);}

       return resultRowCount;
    }

    public Users findById(Integer id){
      Users user = userRepository.findById(1);
        return user;
    }


}
