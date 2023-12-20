package com.example.teamprojectbringiton.date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CurrentDateTimeController {

    @GetMapping("/date-main")
    public String TimePage() {
        return "date/dateMain";
    }

}
