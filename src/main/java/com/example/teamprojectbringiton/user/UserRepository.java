package com.example.teamprojectbringiton.user;

import com.example.teamprojectbringiton.admin.dto.response.UserCountRespDTO;
import com.example.teamprojectbringiton.admin.dto.response.UserSearchRespDTO;
import com.example.teamprojectbringiton.user.dto.request.LoginDTO;
import com.example.teamprojectbringiton.user.dto.response.UserInfoDTO;
import com.example.teamprojectbringiton.user.dto.response.UserPointDTO;
import com.example.teamprojectbringiton.user.dto.response.UserTeamInfoDTO;
import com.example.teamprojectbringiton.user.dto.response.UserUpdateDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserRepository {

    public void insert(User user);        // 사용자 등록

    public User updateById(User user);    // 사용자 수정

    public Integer deleteById(Integer id);  // 사용자 삭제

    public User findById(Integer id);// 사용자 조회

    public List<User> findAll();       // 사용자 전체 조회

    // 사용자의 이름과 비번으로 조회
    public User findByUsernameAndPassword(LoginDTO loginDto);

    // 사용자의 이름만 조회
    public User findByUsername(String username);

    // 사용자의 아이디로 팀 조회
    public UserTeamInfoDTO findByIdJoinTeam(Integer id);

    public void userUpdateImage(User user);

    public void userUpdatePassword(User user);

    public UserPointDTO findByIdJoinPoint(Integer id);

    public UserInfoDTO findByIdForUserInfo(Integer id);


    public List<UserSearchRespDTO> findAllJoinPoint(@Param("pageSize") int pageSize, @Param("offset") int offset);

    public List<UserSearchRespDTO> findAllByNickname(String keyword, String division);

    public List<UserSearchRespDTO> findAllByUsername(String keyword, String division);

    public List<UserSearchRespDTO> findAllByPhoneNumber(String keyword, String division);

    public List<UserSearchRespDTO> findAllByEmail(String keyword, String division);

    public int findAllCount();

    public User findByUserEmail(String userEmail);

    // 유저 이메일과 폰번호 일치하는 데이터 조회
    public User findByEmailAndUserPhoneNumber(String userEmail, String userPhoneNumber);

    public UserUpdateDTO findByIdJoinGenderAndAge(Integer id);

    public void userUpdateIsCaptain(User user);

    void userUpdateTeamId(User user);
}
