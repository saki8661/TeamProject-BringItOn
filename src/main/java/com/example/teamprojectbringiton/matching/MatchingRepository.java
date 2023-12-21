package com.example.teamprojectbringiton.matching;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MatchingRepository {


    public int updateMatching(Matching matching);

    public int insertMatching(Matching matching);


//    public int findByMyApplyMatch(Integer principalId);
//}
}