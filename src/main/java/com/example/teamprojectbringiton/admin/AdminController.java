package com.example.teamprojectbringiton.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping("/admin/admin-main")
    public String adminMain(){
        return "admin/adminMain";
    }
    @GetMapping("/admin/admin-user")
    public String adminUser(){
        return "admin/adminUser";
    }
    @GetMapping("/admin/admin-team")
    public String adminTeam(){
        return "admin/adminTeam";
    }
    @GetMapping("/admin/admin-space")
    public String adminSpace(){
        return "admin/adminSpace";
    }
    @GetMapping("/admin/admin-match")
    public String adminMatch(){
        return "admin/adminMatch";
    }
    @GetMapping("/admin/admin-product")
    public String adminProduct(){
        return "admin/adminProduct";
    }
    @GetMapping("/admin/admin-order")
    public String adminOrder(){
        return "admin/adminOrder";
    }
    @GetMapping("/admin/admin-statistics")
    public String adminStatistics(){
        return "admin/adminStatistics";
    }
    @GetMapping("/admin/admin-customer")
    public String adminCustomer(){
        return "admin/adminCustomer";
    }

}
