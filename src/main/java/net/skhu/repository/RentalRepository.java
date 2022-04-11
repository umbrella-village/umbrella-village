package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import net.skhu.entity.Rental;

public interface RentalRepository extends JpaRepository<Rental, Integer>  {
	
	void findByRentalId(int rental_id);
	void deleteByRentalId(int retal_id);
}

