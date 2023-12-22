package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import com.example.teamprojectbringiton.reservation.response.ReservationRespDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


@Mapper
public interface ReservationRepository {


    public List<MatchingReservationDTO> findApplyMatchingResv();

    public List<UserReservationListDTO> findByUserId(Integer id);

   public ReservationRespDTO findByIdReservSpaceAndSpacePic(@Param("id") Integer id);

   public void reservInsert(Reservation reservation);
}
