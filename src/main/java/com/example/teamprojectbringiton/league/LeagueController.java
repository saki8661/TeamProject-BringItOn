package com.example.teamprojectbringiton.league;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LeagueController {


    @GetMapping("/league-main")
    public String leagueMain() {
        return "league/leagueMain";
    }

    @GetMapping("/league-schedule")
    public String leagueDetail() {
        return "league/leagueSchedule";
    }

    @GetMapping("/calender")
    public String calender() {
        return "league/calender";
    }

    @GetMapping("/league-ranking")
    public String ranking() {
        return "league/leagueRanking";
    }
}
