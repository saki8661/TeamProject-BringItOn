package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.matching.MatchingService;
import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.region.RegionRepository;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.space.SpaceRepository;
import com.example.teamprojectbringiton.team.Team;
import com.example.teamprojectbringiton.team.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class ReservationService {

    @Autowired
    ReservationRepository reservationRepository;

    @Autowired
    TeamRepository teamRepository;

    @Autowired
    SpaceRepository spaceRepository;

    @Autowired
    RegionRepository regionRepository;

    @Autowired
    MatchingService matchingService;

    public List<Team> teamList() {

        return teamRepository.findAll();
    }

    public List<Region> regionList() {

        return regionRepository.findAll();
    }

    public List<Space> spaceList() {

        return spaceRepository.findAll();
    }

    public List<MatchingReservationDTO> matchingReservationList() {
        return reservationRepository.findApplyMatchingResv();
    }

    public List<UserReservationListDTO> findByUserId(Integer id) {
        List<UserReservationListDTO> dto =  reservationRepository.findByUserId(id);
        for (UserReservationListDTO reservationListDTO : dto) {
            reservationListDTO.setStartTime(formatTime(reservationListDTO.getStartTime()));
            reservationListDTO.setEndTime(formatTime(reservationListDTO.getEndTime()));
        }
        return dto;

    }

    private String formatTime(String time) {
        LocalTime localTime = LocalTime.parse(time);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
        return localTime.format(formatter);
    }


}
