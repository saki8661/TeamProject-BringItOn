package com.example.teamprojectbringiton.spaceInquire;

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


}
