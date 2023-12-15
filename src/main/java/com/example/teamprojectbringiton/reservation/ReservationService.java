package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.region.RegionRepository;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.team.Team;
import com.example.teamprojectbringiton.team.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservationService {

    @Autowired
    ReservationRepository reservationRepository;

    @Autowired
    TeamRepository teamRepository;

    @Autowired
    RegionRepository regionRepository;

    public List<Team> teamList() {

        return teamRepository.findAll();
    }

    public List<Region> regionList() {
        return regionRepository.findAll();
    }

    public List<MatchingReservationDTO> matchingReservationList() {
        return reservationRepository.findApplyMathingResv();
    }
}
