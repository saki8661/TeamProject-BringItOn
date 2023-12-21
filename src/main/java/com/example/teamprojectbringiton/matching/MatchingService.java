package com.example.teamprojectbringiton.matching;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.matching.dto.request.MatchingDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

@Service
public class MatchingService {

    @Autowired
    MatchingRepository matchingRepository;

    public void matchingApply(MatchingDTO dto) {
        Matching matching = Matching.builder()
                .id(dto.getId())
                .matchUserId(dto.getMatchUserId())
                .matchingStatus("매칭완료")
                .reservationId(dto.getReservationId())
                .build();
        System.out.println("matchingId = "+matching.getId());
        System.out.println(dto.getMatchingStatus()+"담김?@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        System.out.println(dto.getMatchUserId()+"담김?@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        System.out.println(dto.getReservationId()+"담김?@@@@@@@@@@@@@@@@@@@@@@@@@@@");

        int matchingApply = matchingRepository.updateMatching(matching);
        if (matchingApply != 1) {
            throw new CustomRestfullException("매칭 신청 실패", HttpStatus.INTERNAL_SERVER_ERROR);

        }
    }


//    public int findByMyApplyMatch(Integer principalId) {
//        int findByMyApplyMatch = matchingRepository.findByMyApplyMatch(principalId);
//        if (findByMyApplyMatch != 1) {
//            throw  new CustomRestfullException("매치 조회 실패", HttpStatus.INTERNAL_SERVER_ERROR);
//        }
//        System.out.println("@@@@@@@@@@@@@서비스 호출됨2");
//        return  findByMyApplyMatch;
//    }


}
