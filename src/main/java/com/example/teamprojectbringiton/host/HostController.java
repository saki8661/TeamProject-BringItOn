package com.example.teamprojectbringiton.host;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.reservation.ReservationService;
import com.example.teamprojectbringiton.space.SpaceService;
import com.example.teamprojectbringiton.space.dto.response.MySpaceReservationListDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceUserIdPicJoinDTO;
import com.example.teamprojectbringiton.user.User;
import com.example.teamprojectbringiton.user.UserService;
import com.google.api.Http;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class HostController {

    @Autowired
    private SpaceService spaceService;

    @Autowired
    private UserService userService;

    @Autowired
    private ReservationService reservationService;


    @Autowired
    private HttpSession session;


    @GetMapping("/host/place-registration")
    public String placeResistration(Model model) {
        User user = (User) session.getAttribute("sessionUser");
        if (!user.getUserDivision().equals("host")) {
            throw new CustomRestfullException("권한이 없습니다.", HttpStatus.BAD_REQUEST);
        }
        model.addAttribute("user", user);
        return "host/placeRegistration";
    }

    // 호스트 id 받기(User)
    @GetMapping("/host/management-main/{id}")
    public String managementPage(@PathVariable Integer id, Model model) {
        User user = userService.findById(id);
        if (!user.getUserDivision().equals("host")) {
            throw new CustomRestfullException("권한이 없습니다.", HttpStatus.BAD_REQUEST);
        }
        List<SpaceUserIdPicJoinDTO> spacesList = spaceService.findAllJoinUserIdAndSpacePicId(id);

        model.addAttribute("spacesList", spacesList);
        return "host/managementPage";
    }

    @GetMapping("/host/reservation-status/{id}")
    public String reservationStatus(@PathVariable Integer id, Model model) {
        User user = (User) session.getAttribute("sessionUser");
        List<MySpaceReservationListDTO> spaceReservationList = spaceService.findAllUserIdJoinReservationId(id);
        model.addAttribute("spaceReservationList", spaceReservationList);
        model.addAttribute("sessionUser", user);

        return "host/reservationStatus";
    }
}
