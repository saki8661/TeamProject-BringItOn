package com.example.teamprojectbringiton.space;

import com.example.teamprojectbringiton.space.dto.respDTO.SpaceDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpaceService {

    @Autowired
    private SpaceRepository spaceRepository;
    public List<SpaceDto> findAll() {
        List<SpaceDto> spaces = spaceRepository.findAllJoinSportAndRegion();
        System.out.println(spaces.get(1).isInside());
        return spaces;
    }
}
