package com.example.teamprojectbringiton.team;

import com.example.teamprojectbringiton.team.dto.response.TeamListDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeamRepository {

    public List<Team> findAll();

    public Team findById(Integer id);

    public List<TeamListDTO> findAllJoinRegionAndSport();
}
