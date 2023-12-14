package com.example.teamprojectbringiton.user;

import com.example.teamprojectbringiton.user.dto.request.LoginDTO;
import com.example.teamprojectbringiton.user.dto.response.UserTeamInfoDTO;
import org.apache.ibatis.annotations.Mapper;

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


}
