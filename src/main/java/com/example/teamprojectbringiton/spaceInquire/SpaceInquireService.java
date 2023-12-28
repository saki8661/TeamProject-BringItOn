package com.example.teamprojectbringiton.spaceInquire;

import com.example.teamprojectbringiton.spaceInquire.request.SpaceInqUpdateDTO;
import com.example.teamprojectbringiton.spaceInquire.response.SpaceInquireDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SpaceInquireService {

    @Autowired
    private SpaceInquireRepository spaceInquireRepository;

    public List<SpaceInquireDTO> spaceInqFindById(Integer id) {
        System.out.println("도대체 왜!!!!!!!!!!");
        List<SpaceInquireDTO> spaceInquire = spaceInquireRepository.spaceInqFindById(id);
        System.out.println("++++++공간대여 디티오 받기++++");
        return spaceInquire;
    }

    @Transactional
    public void spaceInqSave(com.example.teamprojectbringiton.spaceInquire.request.SpaceInquireDTO dto) {
        System.out.println("++++insert진입++++");
        SpaceInquire spaceInquire = SpaceInquire.builder()
                .inquireType(dto.getInquireType())
                .inquireContent(dto.getInquireContent())
                .inquireAnswer(dto.getInquireAnswer())
                .userId(dto.getUserId())
                .spaceId(dto.getSpaceId())
                .build();
        System.out.println("insert해따요" + dto.getUserId());
        System.out.println("---content왜 안받아짐"+ dto.getInquireContent());
        spaceInquireRepository.spaceInqInsert(spaceInquire);

    }

    public int inquireTotalCount(Integer spaceId) {

        int inquireCount = spaceInquireRepository.getInquireCount(spaceId);
        return inquireCount;
    }


    public int inqAnswerCount(Integer userId, Integer spaceId) {
        System.out.println("=========서비스 시작==========");

        int hostAnswerCount  = spaceInquireRepository.getHostAnswerCount(userId,spaceId);

        System.out.println("답변받아와라 진자로 농담아니고 :"+hostAnswerCount );
        System.out.println("userId 왜 없는데 죽고싶나: "+ userId) ;
        return hostAnswerCount ;
    }

    public void updateSpaceInquireAnswer(SpaceInqUpdateDTO spaceInqUpdateDTO) {
        spaceInquireRepository.updateSpaceInquireAnswer(spaceInqUpdateDTO);
    }

}
