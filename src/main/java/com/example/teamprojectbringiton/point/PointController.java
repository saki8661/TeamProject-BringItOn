package com.example.teamprojectbringiton.point;

import com.example.teamprojectbringiton.payment.request.UpdatePointDTO;
import com.example.teamprojectbringiton.point.dto.request.PointUseDTO;
import com.example.teamprojectbringiton.pointHistory.PointHistoryService;
import com.example.teamprojectbringiton.reservation.ReservationService;
import com.example.teamprojectbringiton.user.User;
import com.example.teamprojectbringiton.user.UserService;
import com.example.teamprojectbringiton.user.dto.response.UserPointDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class PointController {

    @Autowired
    private PointService pointService;

    @Autowired
    private UserService userService;


    @Autowired
    private PointHistoryService pointHistoryService;

    @Autowired
    private ReservationService reservationService;

    @Autowired
    private HttpSession session;

    @PostMapping("/point-use")
    @ResponseBody
    public ResponseEntity<?> pointUse(PointUseDTO dto) {
        System.out.println("DTO에는 데이터 잘오나? 기존 : " + dto.getPoint());
        System.out.println("DTO에는 데이터 잘오나? 사용 : " + dto.getChargePoint());
        System.out.println("DTO에는 데이터 잘오나? 잔액 : " + dto.getNowPoint());
        User user = (User) session.getAttribute("sessionUser");
        Point point = pointService.findByUserId(user.getId());

        // 포인트 업데이트
        UpdatePointDTO updatePointDTO = new UpdatePointDTO();
        updatePointDTO.setId(point.getId());
        updatePointDTO.setNowPoint(dto.getNowPoint());
        pointService.pointUpdate(updatePointDTO);

        // 포인트 내역 등록
        pointHistoryService.insert(dto.toEntity());

        // 예약 테이블 상태 업데이트
        reservationService.updateStatus(dto.getReservationId());

        UserPointDTO userPointDTO = userService.findByIdJoinPoint(user.getId());
        session.setAttribute("userPoint", userPointDTO);

        return ResponseEntity.ok().body("성공");
    }

}
