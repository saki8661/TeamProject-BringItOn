package com.example.teamprojectbringiton.bookmark;

import com.example.teamprojectbringiton.bookmark.dto.response.BookmarkListDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BookmarkRepository {
    public void insert(Bookmark bookmark);
    public void deleteBookmark(@Param("id") Integer id);

    public Bookmark findBySpaceIdAndUserId(@Param("spaceId") Integer spaceId, @Param("userId") Integer userId);

    List<BookmarkListDTO> findByUserId(Integer id);

}
