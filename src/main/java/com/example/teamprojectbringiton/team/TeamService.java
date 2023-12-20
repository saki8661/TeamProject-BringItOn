package com.example.teamprojectbringiton.team;

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

    public Team findById(Integer id) {
        Team team = teamRepository.findById(id);
        return team;
    }

    public List<TeamListDTO> findAllJoinRegionAndSport() {
        List<TeamListDTO> teamList = teamRepository.findAllJoinRegionAndSport();
        return teamList;
    }
}