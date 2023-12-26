package com.example.teamprojectbringiton.reservationTime;

import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.space.SpaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ReservationTimeController {

    @Autowired
    ReservationTimeService reservationTimeService;

    @Autowired
    SpaceService spaceService;


    @GetMapping("/time-list-find/{id}")
    public ResponseEntity<?> timeListFind(@PathVariable Integer id) {
        Space space = spaceService.findById(id);
        List<ReservationTime> reservationTimeList = reservationTimeService.spaceReservationTimeFind(space);
        System.out.println("리턴한다.");
        return ResponseEntity.ok().body(reservationTimeList);
    }


}
