package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;

import com.example.teamprojectbringiton.reservation.dto.request.ReservationReqDTO;
import com.example.teamprojectbringiton.reservation.dto.response.ReservationRespDTO;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;

@Controller
public class ReservationController {

    @Autowired
    ReservationService reservationService;

    @Autowired
    HttpSession session;


    @GetMapping("/reservation/{id}")
    public String reservationPage(@PathVariable Integer id, Model model) {
        System.out.println("예약하기 컨트롤러 진입" + id);
        ReservationRespDTO reservationName = reservationService.reservationFindBySpaceId(id);
        model.addAttribute("reservationName", reservationName);
        return "/spaceRental/reservation";
    }

    @PostMapping("/reservation")
    public String reservationProc(ReservationReqDTO dto) {
        reservationService.reservationSave(dto);
        return "redirect:/user/reservation/" + dto.getUserId();
    }


    @GetMapping("/user/reservation/{id}")
    public String userReservationPage(@PathVariable Integer id, Model model) {
        System.out.println("내 예약현황 접속");
        List<UserReservationListDTO> reservationList = reservationService.findByUserId(id);
        model.addAttribute("reservationList", reservationList != null ? reservationList : Collections.emptyList());
        return "user/userReservation";
    }

    @DeleteMapping("/user/reservation-delete/{id}")
    @ResponseBody
    public ResponseEntity<?> reservationDelete(@PathVariable Integer id) {
        System.out.println("삭제하러 왔니?");
        Reservation reservation = reservationService.findById(id);
        System.out.println("id로 잘 조회하나?");
        User user = (User) session.getAttribute("sessionUser");
        if (user.getId() != reservation.getUserId()) {
            throw new CustomRestfullException("권한이 없습니다.", HttpStatus.BAD_REQUEST);
        }
        reservationService.deleteById(id);

        return ResponseEntity.ok().body("성공");
    }


}
