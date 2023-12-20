package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import com.example.teamprojectbringiton.reservation.response.ReservationDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceDetailDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


@Mapper
public interface ReservationRepository {


    public List<MatchingReservationDTO> findApplyMatchingResv();

    public List<UserReservationListDTO> findByUserId(Integer id);

   public ReservationDTO findByIdReservSpaceAndSpacePic(@Param("id") Integer id);

   public void reservInsert(Reservation reservation);
}
