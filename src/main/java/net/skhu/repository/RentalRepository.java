package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.entity.Rental;

public interface RentalRepository extends JpaRepository<Rental, Integer>  {
	// 아이디별로 찾고 수정..
	Rental findByUser_id(int user_id);
}
