package com.example.teamprojectbringiton.matching;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.matching.dto.request.MatchingApplyDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

@Service
public class MatchingService {

    @Autowired
    MatchingRepository matchingRepository;

    public void matchigApply(MatchingApplyDTO dto, Integer pricipalId) {
        Matching matching = Matching.builder()
                .matchUserId(pricipalId)
                .matchingStatus(dto.getMatchingStatus())
                .reservationId(dto.getReservationId())
                .build();

        int matchingApply = matchingRepository.insertMatching(matching);
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + dto.getMatchUserId());
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + dto.getMatchingStatus());
        System.out.println("inquire@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + dto.getReservationId());
        if (matchingApply != 1) {
            throw new CustomRestfullException("공지 등록 실패", HttpStatus.INTERNAL_SERVER_ERROR);

        }

    }
}
