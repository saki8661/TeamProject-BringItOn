package com.example.teamprojectbringiton.host;

import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.space.SpaceService;
import com.example.teamprojectbringiton.space.dto.response.SpaceUserIdPicJoinDTO;
import com.example.teamprojectbringiton.team.Team;
import com.example.teamprojectbringiton.user.User;
import com.example.teamprojectbringiton.user.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
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
    private HttpSession session;


    @GetMapping("/place-registration")
    public String placeResistration() {
        return "host/placeRegistration";
    }

    // 호스트 id 받기(User)
    @GetMapping("/management-main/{id}")
    public String managementPage(@PathVariable Integer id, Model model) {
        List<SpaceUserIdPicJoinDTO> spacesList = spaceService.findAllJoinUserIdAndSpacePicId(id);

        model.addAttribute("spacesList", spacesList);
        return "host/managementPage";
    }
}
