package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ReservationController {

    @Autowired
    ReservationService reservationService;

    @GetMapping("/reservation")
    public String reservationPage(){
        return "/spaceRental/reservation";
    }

    @GetMapping("/user/reservation/{id}")
    public String userReservationPage(@PathVariable Integer id, Model model) {
        List<UserReservationListDTO> reservationList = reservationService.findByUserId(id);
        model.addAttribute("reservationList", reservationList);
        return "user/userReservation";
    }


}
