package com.example.teamprojectbringiton.matching;

import com.example.teamprojectbringiton.matching.dto.response.MatchingListDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MatchingRepository {


    public int updateMatching(MatchingListDTO dto);

    public int insertMatching(Matching matching);


    public int findByMyApplyMatch(Integer principalId);
}
