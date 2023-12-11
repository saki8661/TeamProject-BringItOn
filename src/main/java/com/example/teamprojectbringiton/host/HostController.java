package com.example.teamprojectbringiton.host;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HostController {
    @GetMapping("/place-registration")
    public String placeResistration(){
        return "host/placeRegistration";
    }
}
