package com.example.teamprojectbringiton.matching;

import com.example.teamprojectbringiton.inquire.Inquire;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MatchingRepository {

    public int insertMatching(Matching matching);
}
