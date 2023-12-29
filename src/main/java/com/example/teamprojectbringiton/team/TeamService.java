package com.example.teamprojectbringiton.team;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.region.RegionRepository;
import com.example.teamprojectbringiton.team.apply.Apply;
import com.example.teamprojectbringiton.team.apply.ApplyRepository;
import com.example.teamprojectbringiton.team.captain.CaptainRepository;
import com.example.teamprojectbringiton.team.dto.response.TeamDetailDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamListDTO;
import com.example.teamprojectbringiton.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TeamService {

    @Autowired
    private TeamRepository teamRepository;

    @Autowired
    private CaptainRepository captainRepository;

    @Autowired
    private ApplyRepository applyRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RegionRepository regionRepository;

    public List<TeamListDTO> findAllByKeyword(String keyword) {
        List<TeamListDTO> teamList = teamRepository.findAllByKeyword(keyword);

        return teamList;
    }

    public List<TeamListDTO> findAllByCapacity() {
        List<TeamListDTO> teamList = teamRepository.findAllByCapacity();
        return teamList;
    }

    public List<TeamListDTO> findAllByLatest() {
        List<TeamListDTO> teamList = teamRepository.findAllByLatest();
        return teamList;
    }

    public record TeamAndRegion(List<TeamListDTO> teamList, List<Region> regionList) {}

    public List<Team> findAll() {
        List<Team> teamList = teamRepository.findAll();
        return teamList;
    }

    public TeamDetailDTO findById(Integer id) {
        TeamDetailDTO team = teamRepository.findById(id);
        return team;
    }

    public TeamAndRegion findAllJoinSport() {
        List<TeamListDTO> teamList = teamRepository.findAllJoinSport();
        List<Region> regionList = regionRepository.findAll();
        return new TeamAndRegion(teamList, regionList);
    }

    @Transactional
    public void insert(Team team, Integer id) {
        System.out.println("인서트 되기 전 팀 아이디는?" + team.getId());


        int i = teamRepository.insert(team);
        if (i != 1){
            throw new CustomRestfullException("팀 등록 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        captainRepository.insert(team.getId(), id);
        System.out.println("인서트 된 팀 아이디는?" + team.getId());
    }

    public List<TeamDetailDTO> findAllJoin() {
        List<TeamDetailDTO> teamList = teamRepository.findAllJoin();
        return teamList;
    }

    public void teamApply(Apply apply) {
        applyRepository.insert(apply);
    }

    public void applyRefuse(Integer id) {
        applyRepository.deleteById(id);
    }

    public void applyApprove(Integer id) {

        applyRepository.deleteById(id);
    }
}
