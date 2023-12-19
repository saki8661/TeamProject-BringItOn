package com.example.teamprojectbringiton.bookmark;

import com.example.teamprojectbringiton.bookmark.request.BookmarkDTO;
import com.example.teamprojectbringiton.reservation.ReservationService;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import com.example.teamprojectbringiton.spaceInquire.request.SpaceInquireDTO;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BookmarkController {
    @Autowired
    BookmarkService bookmarkService;

    @PostMapping("/space-bookmark")
    public String spaceInquireProc(@RequestBody BookmarkDTO dto) {
        bookmarkService.toggleBookmark(dto);
        System.out.println("+++북마크 dto잘담김+++" + dto.getUserId());
        return "redirect:/space-detail/" + dto.getSpaceId();
    }


}
