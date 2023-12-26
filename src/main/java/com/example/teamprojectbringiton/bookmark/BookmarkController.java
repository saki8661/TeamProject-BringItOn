package com.example.teamprojectbringiton.bookmark;

import com.example.teamprojectbringiton._core.handler.exception.CustomPageException;
import com.example.teamprojectbringiton._core.utils.ApiUtils;
import com.example.teamprojectbringiton.bookmark.dto.request.BookmarkDTO;
import com.example.teamprojectbringiton.bookmark.dto.response.BookmarkListDTO;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BookmarkController {
    @Autowired
    BookmarkService bookmarkService;

    @Autowired
    HttpSession session;

    @PostMapping("/space-bookmark")
    public ApiUtils<?> spaceInquireProc(@RequestBody BookmarkDTO dto) {
        User user = (User) session.getAttribute("sessionUser");
        if (!user.getUserDivision().equals("general")) {
            // 맘에 안드는거 있으면 throw 하고 에러 던지면 됨
            throw new CustomPageException("권한 없음", HttpStatus.BAD_REQUEST);
        }

        bookmarkService.toggleBookmark(dto);
        System.out.println("+++북마크 dto잘담김+++" + dto.getUserId());
        // 성공하면 ApiUtils에 프론트에서 필요한 데이터 담아서 줌
        return new ApiUtils<String>(true, "성공");
    }


    @GetMapping("/user/bookmark/{id}")
    public String userBookmarkManagementPage(@PathVariable Integer id, Model model) {
        List<BookmarkListDTO> bookmarkList = bookmarkService.bookmarkList(id);
        model.addAttribute("bookmarkList", bookmarkList);
        return "user/userBookmark";
    }

    @GetMapping("/api/bookmark-delete/{id}")
    @ResponseBody
    public ResponseEntity<String> deleteBookmark(@PathVariable Integer id) {
        bookmarkService.deleteBookmark(id);
        return ResponseEntity.ok("Bookmark deleted successfully.");
    }

}
