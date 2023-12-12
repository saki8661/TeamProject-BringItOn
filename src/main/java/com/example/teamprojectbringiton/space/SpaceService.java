package com.example.teamprojectbringiton.space;

import com.example.teamprojectbringiton.space.dto.respDTO.SpaceDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpaceService {

    @Autowired
    private SpaceRepository spaceRepository;

    public List<SpaceDto> findAllPaged(int pageSize, int currentPage) {
        System.out.println("페이징 서비스 진입 : " + pageSize);
        System.out.println("페이징 서비스 진입 : " + currentPage);
        int offset = currentPage * pageSize - pageSize;
        return spaceRepository.findAllJoinSportAndRegion(pageSize, offset);
    }

    public int getTotalItemCount() {
        return spaceRepository.findAllCount();
    }
}
