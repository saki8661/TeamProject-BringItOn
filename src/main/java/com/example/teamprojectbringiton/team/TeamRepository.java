package com.example.teamprojectbringiton.team;

import com.example.teamprojectbringiton.team.dto.request.TeamApplyDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamDetailDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamListDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeamRepository {

    public int insert(Team team);

    public List<Team> findAll();

    public TeamDetailDTO findById(Integer id);

    public List<TeamListDTO> findAllJoinSport();

    List<TeamDetailDTO> findAllJoin();

    List<TeamListDTO> findAllByKeyword(String keyword);

    List<TeamListDTO> findAllByLatest();

    List<TeamListDTO> findAllByCapacity();
}
