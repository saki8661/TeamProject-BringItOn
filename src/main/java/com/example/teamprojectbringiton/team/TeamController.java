package com.example.teamprojectbringiton.team;

import com.example.teamprojectbringiton.team.dto.response.TeamListDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class TeamController {

    @Autowired
    private TeamService teamService;

    @GetMapping("/team-main")
    public String teamMainPage(Model model){
        List<TeamListDTO> teamList =  teamService.findAllJoinRegionAndSport();
        model.addAttribute("teamList", teamList);
        return "team/teamMain";
    }

    @GetMapping("/team-detail/{id}")
    public String teamDetailPage(@PathVariable Integer id){
        teamService.findById(id);
        return "team/teamDetail";
    }

    @GetMapping("/team-write")
    public String teamWritePage(){

        return "team/teamWrite";
    }

    @GetMapping("/team-update")
    public String teamUpdatePage(){
        return "team/teamUpdate";
    }


}
