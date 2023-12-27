package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;

import com.example.teamprojectbringiton.reservation.dto.request.ReservationReqDTO;
import com.example.teamprojectbringiton.reservation.dto.response.ReservationRespDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ReservationController {

    @Autowired
    ReservationService reservationService;


    @GetMapping("/reservation/{id}")
    public String reservationPage(@PathVariable Integer id, Model model) {
        System.out.println("예약하기 컨트롤러 진입" + id);
        ReservationRespDTO reservationName = reservationService.reservationFindBySpaceId(id);
        model.addAttribute("reservationName", reservationName);
        return "/spaceRental/reservation";
    }

    @PostMapping("/reservation")
    public String reservationProc(ReservationReqDTO dto) {
        System.out.println("+++리뷰컨트롤러 진입 reservation" + dto.getReservationDate());
        System.out.println("+++dto 담김 reservation:" + dto.getPersonnel());
        System.out.println("+++dto 담김 reservation:" + dto.getToHost());
        System.out.println("+++dto 담김 reservation:" + dto.getSpaceId());
        System.out.println("+++dto 담김 reservation: " + dto.getUserId());
        System.out.println("+++dto 담김 reservation: " + dto.getMatching());
        System.out.println("+++dto 담김 reservation: " + dto.getReservationTimeId());
        reservationService.reservationSave(dto);
        return "redirect:/space-detail/" + dto.getSpaceId();
    }


    @GetMapping("/user/reservation/{id}")
    public String userReservationPage(@PathVariable Integer id, Model model) {
        List<UserReservationListDTO> reservationList = reservationService.findByUserId(id);
        model.addAttribute("reservationList", reservationList);
        return "user/userReservation";
    }



}
