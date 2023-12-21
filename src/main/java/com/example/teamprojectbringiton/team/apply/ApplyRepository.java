package com.example.teamprojectbringiton.team.apply;

import com.example.teamprojectbringiton.team.dto.request.TeamApplyDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ApplyRepository {

    void insert(Apply apply);
}
