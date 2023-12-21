package com.example.teamprojectbringiton.team;

import com.example.teamprojectbringiton.team.dto.response.TeamDetailDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamListDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeamService {

    @Autowired
    private TeamRepository teamRepository;

    public List<Team> findAll() {
        List<Team> teamList = teamRepository.findAll();
        return teamList;
    }

    public TeamDetailDTO findById(Integer id) {
        TeamDetailDTO team = teamRepository.findById(id);
        return team;
    }

    public List<TeamListDTO> findAllJoinSport() {
        List<TeamListDTO> teamList = teamRepository.findAllJoinSport();
        return teamList;
    }

    public void insert(Team team) {
        teamRepository.insert(team);
    }

    public List<TeamDetailDTO> findAllJoin() {
       List<TeamDetailDTO> teamList = teamRepository.findAllJoin();
        return teamList;
    }
}
