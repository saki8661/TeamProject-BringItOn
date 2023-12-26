package com.example.teamprojectbringiton.reservationTime;

import com.example.teamprojectbringiton.reservationTime.dto.response.ReservationTimeDTO;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.space.SpaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


@Controller
public class ReservationTimeController {

    @Autowired
    ReservationTimeService reservationTimeService;

    @Autowired
    SpaceService spaceService;


    @GetMapping("/time-list-find/{id}/{reservationDate}")
    public ResponseEntity<?> timeListFind(@PathVariable Integer id, @PathVariable String reservationDate) {
        Space space = spaceService.findById(id);
        ReservationTimeDTO reservationTimeList = reservationTimeService.spaceReservationTimeFind(space, reservationDate);
        System.out.println("리턴한다.");
        return ResponseEntity.ok().body(reservationTimeList.getTimeDTOList());
    }
    
}
