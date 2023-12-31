package com.example.teamprojectbringiton.reservation;

import com.example.teamprojectbringiton.reservation.dto.response.MatchingReservationDTO;
import com.example.teamprojectbringiton.reservation.dto.response.ReservationRespDTO;
import com.example.teamprojectbringiton.reservation.dto.response.UserReservationListDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;


@Mapper
public interface ReservationRepository {


    public List<MatchingReservationDTO> findApplyMatchingResv();

    public List<UserReservationListDTO> findByUserId(Integer id);


    public ReservationRespDTO findByIdReservSpaceAndSpacePic(@Param("id") Integer id);

    public void reservInsert(Reservation reservation);

    public List<Reservation> findByspaceIdAndreservationDate(Integer spaceId, Date reservationDate);

    List<MatchingReservationDTO> findAllMatchingByDate(Integer date);

    public Reservation findById(Integer reservationId);

    public void updateStatus(Reservation reservation);

    void deleteById(Integer id);
}
