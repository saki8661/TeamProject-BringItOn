package com.example.teamprojectbringiton.space;

import com.example.teamprojectbringiton._core.utils.PageVO;
import com.example.teamprojectbringiton.space.dto.response.SpaceDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceListDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SpaceRestController {

    @Autowired SpaceService spaceService;

    @GetMapping({"/homePaging"})
    public ResponseEntity<List<SpaceDTO>> getAllSpaces(
            @RequestParam(name = "currentPage", defaultValue = "1") int currentPage,
            @RequestParam(name = "pageSize", defaultValue = "8") int pageSize,Model model) {

        List<SpaceDTO> spaces = spaceService.findAllPaged(pageSize, currentPage);
        int totalItems = spaceService.getTotalItemCount();

        // 추가: 페이징 정보 설정
        PageVO pageVO = new PageVO();
        pageVO.setCurrentPage(currentPage);
        pageVO.setCountPerPage(pageSize);
//        pageVO.setLastPage((int) Math.ceil((double) totalItems / pageSize));
        pageVO.setFirstPage(1);
        pageVO.setPageSize(8); // 기본값 설정
        pageVO.setCountSize(5);

        model.addAttribute("pageVO", pageVO);
        return new ResponseEntity<>(spaces, HttpStatus.OK);
    }

    @GetMapping({"/api/insideSpace"})
    public ResponseEntity<List<SpaceListDTO>> getInsideSpace(
            @RequestParam(name = "currentPage", defaultValue = "1") int currentPage,
            @RequestParam(name = "pageSize", defaultValue = "8") int pageSize,
            Model model) {

        List<SpaceListDTO> spaceList = spaceService.insideSpace(pageSize, currentPage);


        // 추가: 페이징 정보 설정
        PageVO pageVO = new PageVO();
        pageVO.setCurrentPage(currentPage);
        pageVO.setCountPerPage(pageSize);
//        pageVO.setLastPage((int) Math.ceil((double) 54 / pageSize));
        pageVO.setFirstPage(1);
        pageVO.setPageSize(8); // 기본값 설정
        pageVO.setCountSize(5);

        model.addAttribute("pageVO", pageVO);
        return new ResponseEntity<>(spaceList, HttpStatus.OK);
    }

    @GetMapping({"/api/outsideSpace"})
    public ResponseEntity<List<SpaceListDTO>> getOutsideSpace(
            @RequestParam(name = "currentPage", defaultValue = "1") int currentPage,
            @RequestParam(name = "pageSize", defaultValue = "8") int pageSize,
            Model model) {

        List<SpaceListDTO> spaceList = spaceService.outsideSpace(pageSize, currentPage);


        // 추가: 페이징 정보 설정
        PageVO pageVO = new PageVO();
        pageVO.setCurrentPage(currentPage);
        pageVO.setCountPerPage(pageSize);
//        pageVO.setLastPage((int) Math.ceil((double) 54 / pageSize));
        pageVO.setFirstPage(1);
        pageVO.setPageSize(8); // 기본값 설정
        pageVO.setCountSize(5);

        model.addAttribute("pageVO", pageVO);
        return new ResponseEntity<>(spaceList, HttpStatus.OK);
    }

}
