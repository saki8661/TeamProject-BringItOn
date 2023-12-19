package com.example.teamprojectbringiton.admin;

import com.example.teamprojectbringiton._core.utils.PageVO;
import com.example.teamprojectbringiton.admin.dto.request.UserSearchReqDTO;
import com.example.teamprojectbringiton.admin.dto.response.UserCountRespDTO;
import com.example.teamprojectbringiton.admin.dto.response.UserSearchRespDTO;
import com.example.teamprojectbringiton.user.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private HttpSession session;

    @GetMapping("/admin/admin-main")
    public String adminMain(Model model) {
        int userCount = userService.findAllCount();
        model.addAttribute("userCount", userCount);

        return "admin/adminMain";
    }

    @GetMapping("/admin/admin-user")
    public String adminUser() {
        return "admin/adminUser";
    }

    @GetMapping("/admin/user-all")
    @ResponseBody
    public ResponseEntity<List<UserSearchRespDTO>> adminAll(@RequestParam(name = "currentPage", defaultValue = "1") int currentPage,
                                                            @RequestParam(name = "pageSize", defaultValue = "10") int pageSize, Model model){
        List<UserSearchRespDTO> userList = userService.findAllJoinPoint(pageSize, currentPage);
        int userCount = userService.findAllCount();

        PageVO pageVO = new PageVO();
        pageVO.setCurrentPage(currentPage);
        pageVO.setCountPerPage(pageSize);
        pageVO.setLastPage((int) Math.ceil((double) userCount / pageSize));
        pageVO.setFirstPage(1);
        pageVO.setPageSize(8); // 기본값 설정
        pageVO.setCountSize(5);

        model.addAttribute("userList", userList);
        model.addAttribute("pageVO", pageVO);
        return ResponseEntity.ok().body(userList);
    }
    @GetMapping("/admin/user-search")
    @ResponseBody
    public ResponseEntity<List<UserSearchRespDTO>> userSearch(UserSearchReqDTO dto) {
        List<UserSearchRespDTO> user = null;
        if (dto.getCategory().equals("아이디")) {
            user = userService.findAllByUsername(dto.getKeyword(), dto.getDivision());
        }
        if (dto.getCategory().equals("닉네임")) {
            user = userService.findAllByNickname(dto.getKeyword(), dto.getDivision());
        }
        if (dto.getCategory().equals("전화번호")) {
            user = userService.findAllByPhoneNumber(dto.getKeyword(), dto.getDivision());
        }
        if (dto.getCategory().equals("이메일")) {
            user = userService.findAllByEmail(dto.getKeyword(), dto.getDivision());
        }
        return ResponseEntity.ok().body(user);

    }

    @GetMapping("/admin/admin-space")
    public String adminSpace() {
        return "admin/adminSpace";
    }

    @GetMapping("/admin/admin-product")
    public String adminProduct() {
        return "admin/adminProduct";
    }

    @GetMapping("/admin/admin-order")
    public String adminOrder() {
        return "admin/adminOrder/adminOrder";
    }

    @GetMapping("/admin/admin-customer")
    public String adminCustomer() {
        return "admin/adminCustomer";
    }

}
