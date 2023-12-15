package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.team.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ReservationController {

    @Autowired
    ReservationService reservationService;

    @GetMapping("/reservation")
    public String reservationPage(){
        return "/spaceRental/reservation";
    }


    @GetMapping("/matching-main")
    public  String matchReservationPage(Model model){

        List<MatchingReservationDTO> matchings = reservationService.matchingReservationList();
        List<Team> teamList = reservationService.teamList();
        List<Region> regionList = reservationService.regionList();
        System.out.println("매칭신청 예약 리스트 입니다"+matchings.get(0).getTeamName());
        model.addAttribute("matchings", matchings);
        model.addAttribute("teamList", teamList);
        model.addAttribute("regionList", regionList);
        return "/matching/matchingPage";
    }


}
