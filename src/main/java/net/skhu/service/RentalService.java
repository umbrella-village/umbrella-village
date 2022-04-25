package net.skhu.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import net.skhu.entity.Rental;
import net.skhu.repository.RentalRepository;

@Service
public class RentalService {
	
	@Autowired RentalRepository rentalRepository;
	
	public List<Rental> findRental(){
		return rentalRepository.findAll();
	}
	

}
