package com.example.teamprojectbringiton.team;

import com.example.teamprojectbringiton.team.dto.request.TeamCreateDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamDetailDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamListDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class TeamController {

    @Autowired
    private TeamService teamService;

    @GetMapping("/team-main")
    public String teamMainPage(Model model) {
        List<TeamListDTO> teamList = teamService.findAllJoinSport();
        List<TeamDetailDTO> teamDetail = teamService.findAllJoin();
        System.out.println(teamList.get(3) );
        model.addAttribute("teamList", teamList);
        model.addAttribute("teamDetail", teamDetail);
        return "team/teamMain";
    }

    @GetMapping("/team-detail/{id}")
    public String teamDetailPage(@PathVariable Integer id, Model model) {
        TeamDetailDTO team = teamService.findById(id);
        model.addAttribute("team", team);
        return "team/teamDetail";
    }

    @PostMapping("/team-write")
    public String teamCreate(TeamCreateDTO dto) {
        Team team = Team.builder()
                .teamName(dto.getTeamName())
                .teamLocation(dto.getTeamLocation())
                .teamPicUrl("psg.jpg")
                .teamIntroduce(dto.getTeamIntroduce())
                .ageId(dto.getAgeId())
                .genderId(dto.getGenderId())
                .sportId(dto.getSportId())
                .positionId(dto.getPositionId())
                .teamCapacity(dto.getTeamCapacity())
                .build();

        teamService.insert(team);
        return "redirect:/team-main";
    }

    @GetMapping("/team-update")
    public String teamUpdatePage() {
        return "team/teamUpdate";
    }


}
