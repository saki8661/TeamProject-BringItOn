package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;

import com.example.teamprojectbringiton.reservation.request.ReservationReqDTO;
import com.example.teamprojectbringiton.reservation.response.ReservationRespDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

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
        System.out.println("모델에 담긴 데이터 SpaceName :" + reservationName.getSpaceName());
        System.out.println("모델에 담긴 데이터 SpaceId :" + reservationName.getSpaceId());
        System.out.println("모델에 담긴 데이터 SpaceLocation :" + reservationName.getSpaceLocation());
        System.out.println("예약 공간이 모델에 담겼다");
        return "/spaceRental/reservation";
    }

    @PostMapping("/reservation/{id}")
    public String reservationProc(@PathVariable Integer id, ReservationReqDTO dto) {
        System.out.println("+++리뷰컨트롤러 진입 reservation" + dto.getSpaceId());
        System.out.println("+++dto 담김 reservation:" + dto.getPersonnel());
        reservationService.reservationSave(dto);
        System.out.println("+++dto 담김 reservation:" + dto.getPersonnel());
        System.out.println("+++dto 담김 reservation:" + dto.getToHost());
        System.out.println("+++dto 담김 reservation: " + dto.isMatching());

        return "redirect:/space-detail/" + id;
    }


    @GetMapping("/user/reservation/{id}")
    public String userReservationPage(@PathVariable Integer id, Model model) {
        List<UserReservationListDTO> reservationList = reservationService.findByUserId(id);
        model.addAttribute("reservationList", reservationList);
        return "user/userReservation";
    }


}
