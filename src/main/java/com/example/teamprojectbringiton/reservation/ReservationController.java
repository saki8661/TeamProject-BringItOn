package com.example.teamprojectbringiton.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class ReservationController {

    @GetMapping("/reservation")

    public String reservationPage(){
        return "/spaceRental/reservation";
    }

    @GetMapping("/place-detail")
    public String placeDetailPage(){
        return "/spaceRental/placeDetail";
    }

}
