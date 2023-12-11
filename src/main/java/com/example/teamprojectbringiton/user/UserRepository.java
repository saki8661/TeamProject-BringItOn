package com.example.teamprojectbringiton.user;

import com.example.teamprojectbringiton.user.dto.reqDTO.LoginDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserRepository {

    public int insert(User user);        // 사용자 등록
    public int updateById(User user);    // 사용자 수정
    public int deleteById(Integer id);  // 사용자 삭제
    public User findById(Integer id);// 사용자 조회
    public List<User> findAll();       // 사용자 전체 조회

    // 사용자의 이름과 비번으로 조회
    public User findByUsernameAndPassword(LoginDto loginDto);

    // 사용자의 이름만 조회
    public int findByUsername(String username);
}
