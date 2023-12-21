package com.example.teamprojectbringiton.team;

import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import com.example.teamprojectbringiton.team.apply.Apply;
import com.example.teamprojectbringiton.team.apply.ApplyRepository;
import com.example.teamprojectbringiton.team.dto.request.TeamApplyDTO;
import com.example.teamprojectbringiton.team.dto.request.TeamCreateDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamDetailDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamListDTO;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
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


    @Autowired
    private HttpSession session;

    @GetMapping("/team-main")
    public String teamMainPage(Model model) {
        List<TeamListDTO> teamList = teamService.findAllJoinSport();
        List<TeamDetailDTO> teamDetail = teamService.findAllJoin();
        System.out.println(teamList.get(3));
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
        User sessionUser = (User) session.getAttribute("sessionUser");

        // 1. 인증 체크
        if (sessionUser == null) {
            throw new UnAuthorizedException("로그인을 해주세요", HttpStatus.UNAUTHORIZED);
        }
        ;

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
        teamService.insert(team, sessionUser.getId());
        return "redirect:/team-main";
    }

    @PostMapping("/team-apply/{id}")
    public String teamApply(@PathVariable Integer id, TeamApplyDTO dto) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        if (sessionUser == null) {
            throw new UnAuthorizedException("로그인 먼저 해주세요", HttpStatus.UNAUTHORIZED);
        }
        System.out.println("=========================================");
        System.out.println(dto.getTeamId());
        System.out.println(dto.getCaptainUserId());
        System.out.println(dto.getPersonalUserId());
        System.out.println("=========================================");
        Apply apply = Apply.builder()
                .teamId(id)
                .captainUserId(dto.getCaptainUserId())
                .personalUserId(sessionUser.getId())
                .build();
        System.out.println("==========================================");
        System.out.println(apply.getTeamId());
        System.out.println(apply.getCaptainUserId());
        System.out.println(apply.getPersonalUserId());
        System.out.println("==========================================");

        teamService.teamApply(apply);
        return "redirect:/team-main";
    }

    @GetMapping("/team-update")
    public String teamUpdatePage() {
        return "team/teamUpdate";
    }


}
