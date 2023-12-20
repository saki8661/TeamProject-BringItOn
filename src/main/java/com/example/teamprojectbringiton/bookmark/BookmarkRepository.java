package com.example.teamprojectbringiton.bookmark;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BookmarkRepository {
    public void insert(Bookmark bookmark);
    public void deleteBookmark(@Param("id") Integer id);

    public Bookmark findBySpaceIdAndUserId(@Param("spaceId") Integer spaceId, @Param("userId") Integer userId);
}
