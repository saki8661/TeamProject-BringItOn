package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReservationRepository {

    public List<MatchingReservationDTO> findApplyMathingResv();

    public List<UserReservationListDTO> findByUserId(Integer id);
}
    
