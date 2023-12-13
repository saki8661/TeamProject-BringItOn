package com.example.teamprojectbringiton.space;

import com.example.teamprojectbringiton.space.dto.respDTO.SpaceDto;
import com.example.teamprojectbringiton.user.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SpaceRepository {

    public int insert(Space space);        // 시설 등록
    public int updateById(Space space);    // 시설 수정
    public int deleteById(Integer id);  // 시설 삭제
    public Space findById(Integer id);// 시설 상세보기
    public List<Space> findAll();       // 사용자 전체 조회
    public List<SpaceDto> findAllJoinSportAndRegion(@Param("pageSize") int pageSize, @Param("offset") int offset);
    public int findAllCount();

}
