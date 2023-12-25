package com.example.teamprojectbringiton.reservationTime;

import com.example.teamprojectbringiton.matching.Matching;
import com.example.teamprojectbringiton.matching.MatchingRepository;
import com.example.teamprojectbringiton.matching.MatchingService;
import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.region.RegionRepository;
import com.example.teamprojectbringiton.reservation.Reservation;
import com.example.teamprojectbringiton.reservation.ReservationRepository;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import com.example.teamprojectbringiton.reservation.request.ReservationReqDTO;
import com.example.teamprojectbringiton.reservation.response.ReservationRespDTO;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.space.SpaceRepository;
import com.example.teamprojectbringiton.team.Team;
import com.example.teamprojectbringiton.team.TeamRepository;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class ReservationTimeService {
    @Autowired
    private ReservationTimeRepository reservationTimeRepository;

    public void spaceReservationTimeFind(Space space) {
        List<ReservationTime> response = reservationTimeRepository.findBySpaceReservationTime(space.getBizStartTime(), space.getBizEndTime());
        System.out.println("데이터 잘 가져오나?" + response.get(0).getStartTime());
        System.out.println("데이터 잘 가져오나?" + response.get(1).getStartTime());
        System.out.println("데이터 잘 가져오나?" + response.get(2).getStartTime());
        System.out.println("데이터 잘 가져오나?" + response.get(3).getStartTime());
        System.out.println("데이터 잘 가져오나?" + response.get(4).getStartTime());
        System.out.println("데이터 잘 가져오나?" + response.get(5).getStartTime());
        System.out.println("데이터 잘 가져오나?" + response.get(6).getStartTime());
        System.out.println("데이터 잘 가져오나?" + response.get(7).getStartTime());
    }


}
