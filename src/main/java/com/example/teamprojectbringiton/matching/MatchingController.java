package com.example.teamprojectbringiton.matching;

import com.example.teamprojectbringiton.matching.dto.request.MatchingDTO;
import com.example.teamprojectbringiton.matching.dto.response.MyMatchingApplyListDTO;
import com.example.teamprojectbringiton.matching.dto.response.MyMatchingListDTO;
import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.reservation.ReservationService;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class MatchingController {

    @Autowired
    HttpSession session;

    @Autowired
    ReservationService reservationService;

    @Autowired
    MatchingService matchingService;

    @GetMapping("/matching-main")
    public String matchReservationPage(Model model) {
        System.out.println("controller 진입");
        List<MatchingReservationDTO> matchings = reservationService.matchingReservationList();
        System.out.println("-============================" + matchings.size());
        List<Region> regionList = reservationService.regionList();
        System.out.println("매칭신청 예약 리스트 입니다" + matchings.get(0).getTeamName());
        model.addAttribute("matchings", matchings);
        model.addAttribute("regionList", regionList);
        System.out.println("매칭아이디" + matchings.get(2).getMatchingId());
        return "matching/matchingPage";
    }


    @PostMapping("/matching-apply/{id}")
    public String matchingApply(@PathVariable Integer id, MatchingDTO dto) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        dto.setMatchUserId(sessionUser.getId());
        System.out.println("pathVariable" + id);
        matchingService.matchingApply(dto);
        return "redirect:/matching-main";
    }

    @GetMapping("/matching-myMatch/{id}")
    public String myMatchPage(@PathVariable Integer id, Model model) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        List<MyMatchingListDTO> myMatchings = matchingService.myMatchingList(sessionUser.getId());
        List<MyMatchingApplyListDTO> myApplyMatchings = matchingService.myApplyMatchingList(sessionUser.getId());
        model.addAttribute("myMatchings", myMatchings);
        model.addAttribute("myApplyMatchings", myApplyMatchings);
        return "user/userMyMatchingPage";
    }

}
