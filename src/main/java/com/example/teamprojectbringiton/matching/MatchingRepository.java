package com.example.teamprojectbringiton.matching;

import com.example.teamprojectbringiton.matching.dto.response.MyMatchingApplyListDTO;
import com.example.teamprojectbringiton.matching.dto.response.MyMatchingListDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MatchingRepository {


    public int updateMatching(Matching matching);

    public int insertMatching(Matching matching);

    public List<MyMatchingListDTO> findMyMatchingList(Integer userId);
    public List<MyMatchingApplyListDTO> findMyApplyMatchingList(Integer userId);


//    public int findByMyApplyMatch(Integer principalId);
//}
}