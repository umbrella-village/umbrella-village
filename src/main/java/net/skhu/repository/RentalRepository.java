package net.skhu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.entity.Rental;

public interface RentalRepository extends JpaRepository<Rental, Integer>  {

   // 현재 유저의 렌탈 목록 불러오기
   List<Rental> findAllByUser_Id(int user_id);

   // 반납하려는 렌탈 불러오기
   Rental findById(int rental_id);
}