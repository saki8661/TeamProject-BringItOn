package com.example.teamprojectbringiton.team;

import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import com.example.teamprojectbringiton.team.apply.Apply;
import com.example.teamprojectbringiton.team.apply.ApplyRepository;
import com.example.teamprojectbringiton.team.dto.request.TeamApplyDTO;
import com.example.teamprojectbringiton.team.dto.request.TeamCreateDTO;
import com.example.teamprojectbringiton.team.dto.request.UpdateTeamIdDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamDetailDTO;
import com.example.teamprojectbringiton.team.dto.response.TeamListDTO;
import com.example.teamprojectbringiton.user.User;
import com.example.teamprojectbringiton.user.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class TeamController {

    @Autowired
    private TeamService teamService;

    @Autowired
    private UserService userService;

    @Autowired
    private HttpSession session;

    @GetMapping("/team-main")
    public String teamMainPage(Model model) {
        TeamService.TeamAndRegion result = teamService.findAllJoinSport();
        List<TeamDetailDTO> teamDetail = teamService.findAllJoin();
        System.out.println("팀 네임" + result.teamList().get(3).getAge());
        System.out.println("팀 네임" + result.teamList().get(3).getGender());
        System.out.println("팀 네임" + result.teamList().get(3).getPosition());
        System.out.println("지역 네임" + result.regionList().get(0).getRegionName());
        model.addAttribute("teamList", result.teamList());
        model.addAttribute("regionList", result.regionList());
        model.addAttribute("teamDetail", teamDetail);
        return "team/teamMain";
    }

    @GetMapping("/api/team-location")
    @ResponseBody
    public ResponseEntity<?> teamLocation(@RequestParam String keyword) {
        List<TeamListDTO> teamList = teamService.findAllByKeyword(keyword);
        System.out.println(teamList.get(0).getTeamName());
        return new ResponseEntity<>(teamList, HttpStatus.OK);
    }

    @GetMapping("/api/team-filter")
    @ResponseBody
    public ResponseEntity<?> teamFilter(@RequestParam String orderBy) {
        if (orderBy.equals("capacity")) {
            List<TeamListDTO> teamList = teamService.findAllByCapacity();
            System.out.println(teamList.get(0).getTeamName());
            return new ResponseEntity<>(teamList, HttpStatus.OK);
        }

            List<TeamListDTO> teamList = teamService.findAllByLatest();
            return new ResponseEntity<>(teamList, HttpStatus.OK);
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
        User user = userService.findById(sessionUser.getId());
        System.out.println(user.getNickName());
        user.updateCaptain(true);
        userService.userUpdateIsCaptain(user);
        return "redirect:/team-main";
    }

    @PostMapping("/team-apply/{id}")
    public String teamApply(@PathVariable Integer id, TeamApplyDTO dto) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        if (sessionUser == null) {
            throw new UnAuthorizedException("로그인 먼저 해주세요", HttpStatus.UNAUTHORIZED);
        }
        Apply apply = Apply.builder()
                .teamId(id)
                .captainUserId(dto.getCaptainUserId())
                .personalUserId(sessionUser.getId())
                .build();

        teamService.teamApply(apply);
        return "redirect:/team-main";
    }

    @GetMapping("/team-update")
    public String teamUpdatePage() {
        return "team/teamUpdate";
    }

    @PostMapping("/team-apply-approve/{id}")
    public String applyApprove(@PathVariable Integer id, UpdateTeamIdDTO dto) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        User user = userService.findById(dto.getUserId());
        userService.userUpdateTeamId(user, dto);
        teamService.applyApprove(id);
        return "redirect:/user/team-apply/" + sessionUser.getId();
    }

    @GetMapping("/team-apply-refuse/{id}")
    public String applyRefuse(@PathVariable Integer id) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        teamService.applyRefuse(id);
        return "redirect:/user/team-apply/" + sessionUser.getId();
    }


}
