package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.matching.Matching;
import com.example.teamprojectbringiton.matching.MatchingRepository;
import com.example.teamprojectbringiton.matching.MatchingService;
import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.region.RegionRepository;
import com.example.teamprojectbringiton.reservation.dto.request.ReservationReqDTO;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.reservation.dto.response.ReservationRespDTO;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.space.SpaceRepository;
import com.example.teamprojectbringiton.team.Team;
import com.example.teamprojectbringiton.team.TeamRepository;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class ReservationService {
    @Autowired
    HttpSession session;

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
        System.out.println("dto에는 머가 있을까? getId : " + dto.get(0).getId());
        System.out.println("dto에는 머가 있을까? getReservationDate : " + dto.get(0).getReservationDate());
        System.out.println("dto에는 머가 있을까? getPrice : " + dto.get(0).getPrice());
        System.out.println("dto에는 머가 있을까? getSpacePic : " + dto.get(0).getSpacePic());
        System.out.println("dto에는 머가 있을까? getSector : " + dto.get(0).getSector());
        System.out.println("dto에는 머가 있을까? getStatus : " + dto.get(0).getStatus());
        System.out.println("dto에는 머가 있을까? getStartTime : " + dto.get(0).getStartTime());
        System.out.println("dto에는 머가 있을까? getEndTime : " + dto.get(0).getEndTime());
        System.out.println("dto에는 머가 있을까? getReservationNumber : " + dto.get(0).getReservationNumber());
        System.out.println("dto에는 머가 있을까? getSpaceLocation : " + dto.get(0).getSpaceLocation());
        System.out.println("dto에는 머가 있을까? getSpaceName : " + dto.get(0).getSpaceName());
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
        User sessionUser = (User) session.getAttribute("sessionUser");
        // date 타입으로 변환
        LocalDate localDate = LocalDate.parse(dto.getReservationDate(), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        Date reservationDate = Date.valueOf(localDate);

        // - 빼기
        String formattedDate = dto.getReservationDate();
        String formattedText = formattedDate.replaceAll("-", "");

        String reservationNumber = formattedText + dto.getSpaceId() + dto.getReservationTimeId();

        System.out.println("예약번호 : " + reservationNumber);

        Reservation reservation = Reservation.builder()
                .reservationNumber(reservationNumber)
                .reservationDate(reservationDate)
                .personnel(dto.getPersonnel())
                .status("예약진행중")
                .toHost(dto.getToHost())
                .userId(dto.getUserId())
                .spaceId(dto.getSpaceId())
                .matching(dto.getMatching())
                .reservationTimeId(dto.getReservationTimeId())
                .build();
        System.out.println("insert해따요" + dto.getUserId());
        reservationRepository.reservInsert(reservation);

        if (dto.getMatching()) {
            Matching matching = Matching.builder()
                    .userId(sessionUser.getId())
                    .reservationId(reservation.getId())
                    .matchingStatus("매칭대기중")
                    .build();
            System.out.println(sessionUser.getId() + "세션유저 담김?????????????여긴 레절베이션");
            System.out.println(reservation.getId() + "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
            matchingRepository.insertMatching(matching);
        }
    }
    
    public List<MatchingReservationDTO> getAllMatching(Integer date) {
        List<MatchingReservationDTO> matchings = reservationRepository.findAllMatchingByDate(date);
        return matchings;
    }

}
