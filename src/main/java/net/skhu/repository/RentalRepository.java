package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import net.skhu.entity.Rental;

public interface RentalRepository extends JpaRepository<Rental, Integer>{
	void findByRentalid(int rentalid);
}
