package com.example.teamprojectbringiton.reservationTime;

import com.example.teamprojectbringiton.reservation.ReservationService;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import com.example.teamprojectbringiton.reservation.request.ReservationReqDTO;
import com.example.teamprojectbringiton.reservation.response.ReservationRespDTO;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.space.SpaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class ReservationTimeController {

    @Autowired
    ReservationTimeService reservationTimeService;

    @Autowired
    SpaceService spaceService;


    @GetMapping("/findTest/{id}")
public String test(@PathVariable Integer id){
    Space space = spaceService.findById(id);
    reservationTimeService.spaceReservationTimeFind(space);
    return "성공!";
}


}
