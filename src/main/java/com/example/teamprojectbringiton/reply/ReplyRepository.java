package com.example.teamprojectbringiton.reply;

import com.example.teamprojectbringiton.reply.dto.response.ReplyDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReplyRepository {

    List<ReplyDTO> findRepliesByBoardId(Integer boardId);


}
