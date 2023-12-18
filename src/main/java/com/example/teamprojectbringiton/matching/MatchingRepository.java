package com.example.teamprojectbringiton.matching;

import com.example.teamprojectbringiton.matching.dto.response.MatchingListDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MatchingRepository {


    public int updateMatching(MatchingListDTO dto);

    public int insertMatching(Matching matching);


}
