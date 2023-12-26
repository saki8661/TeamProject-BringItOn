package com.example.teamprojectbringiton.bookmark;

import com.example.teamprojectbringiton.bookmark.request.BookmarkDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BookmarkService {

    @Autowired
    private BookmarkRepository bookmarkRepository;

    @Autowired
    private HttpSession session;


    @Transactional
    public void toggleBookmark(BookmarkDTO dto) {
        // 사용자 아이디, 공간 아이디, 혹은 다른 필요한 정보를 가져와서 적절히 처리
        Integer userId = dto.getUserId();
        Integer spaceId = dto.getSpaceId();

        // 북마크 토글
        Bookmark existingBookmark = bookmarkRepository.findBySpaceIdAndUserId(spaceId,userId);

        System.out.println("디티오 뱉아내라" + existingBookmark);
        if (existingBookmark != null) {
            System.out.println("북마크 삭제 돼라 좋은말로 할때" + dto.getSpaceId());
            // 북마크가 이미 존재하면 삭제
            bookmarkRepository.deleteBookmark(existingBookmark.getId());
            System.out.println("북마크가 삭제되었습니다.");
        } else {
            // 북마크가 존재하지 않으면 추가
            Bookmark newBookmark = Bookmark.builder()
                    .spaceId(spaceId)
                    .userId(userId)
                    .build();
            bookmarkRepository.insert(newBookmark);
            System.out.println("북마크가 추가되었습니다.");
        }
    }

}

