package com.example.teamprojectbringiton.reservationTime;

import com.example.teamprojectbringiton.reservation.Reservation;
import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import com.example.teamprojectbringiton.reservation.response.ReservationRespDTO;
import com.example.teamprojectbringiton.space.Space;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


@Mapper
public interface ReservationTimeRepository {


    public List<MatchingReservationDTO> findApplyMatchingResv();

    public List<UserReservationListDTO> findByUserId(Integer id);

   public ReservationRespDTO findByIdReservSpaceAndSpacePic(@Param("id") Integer id);

   public void reservInsert(Reservation reservation);

    public List<ReservationTime> findBySpaceReservationTime(String startTime, String endTime);
}
