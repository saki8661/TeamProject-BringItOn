package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.matching.Matching;
import com.example.teamprojectbringiton.matching.MatchingRepository;
import com.example.teamprojectbringiton.matching.MatchingService;
import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.region.RegionRepository;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import com.example.teamprojectbringiton.reservation.request.ReservationReqDTO;
import com.example.teamprojectbringiton.reservation.response.ReservationRespDTO;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.space.SpaceRepository;
import com.example.teamprojectbringiton.team.Team;
import com.example.teamprojectbringiton.team.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

    @Autowired
    MatchingRepository matchingRepository;

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
        List<UserReservationListDTO> dto = reservationRepository.findByUserId(id);
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


    public ReservationRespDTO reservationFindBySpaceId(Integer id) {
        System.out.println("예약하기 서비스 진입" + id);
        ReservationRespDTO reservation = reservationRepository.findByIdReservSpaceAndSpacePic(id);
        System.out.println("+++++++++++++++++레파지토리++++++++++++++");
        return reservation;

    }

    @Transactional
    public void reservationSave(ReservationReqDTO dto) {
        System.out.println("++++예약하기 insert진입++++");
        Reservation reservation = Reservation.builder()
                .personnel(dto.getPersonnel())
                .toHost(dto.getToHost())
                .userId(dto.getUserId())
                .spaceId(dto.getSpaceId())
                .matching(dto.isMatching())
                .build();
        System.out.println("insert해따요" + dto.getUserId());
        reservationRepository.reservInsert(reservation);

        if (dto.isMatching()) {
            Matching matching = Matching.builder()
                    .reservationId(reservation.getId())
                    .matchingStatus("매칭대기중")
                    .build();
            System.out.println(reservation.getId()+"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
            matchingRepository.insertMatching(matching);
        }
    }

}
