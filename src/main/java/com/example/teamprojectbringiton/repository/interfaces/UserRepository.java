package com.example.teamprojectbringiton.repository.interfaces;

import com.example.teamprojectbringiton.dto.request.SignInFormDto;
import com.example.teamprojectbringiton.repository.entity.Users;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserRepository {

    public int insert(Users users);        // 사용자 등록
    public int updateById(Users users);    // 사용자 수정
    public int deleteById(Integer id);  // 사용자 삭제
    public Users findById(Integer id);   // 사용자 조회
    public List<Users> findAll();       // 사용자 전체 조회

    // 사용자의 이름과 비번으로 조회
    public Users findByUsernameAndPassword(SignInFormDto dto);
    // 사용자의 이름만 조회
    public Users findByUsername(String username);
}

