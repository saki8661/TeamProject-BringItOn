package com.example.teamprojectbringiton.host;

import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.team.Team;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HostController {
    @GetMapping("/place-registration")
    public String placeResistration(){
        return "host/placeRegistration";
    }

    @GetMapping("/management-main")
    public  String managementPage(){
        return "host/managementPage";
    }
}
