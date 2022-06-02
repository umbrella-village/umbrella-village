package net.skhu.service;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import net.skhu.entity.Rental;
import net.skhu.repository.RentalRepository;
import net.skhu.entity.Umbrella;
import net.skhu.entity.User;

@Service
public class RentalService {
	@Autowired RentalRepository rentalRepository;

	public List<Rental> findRental(){
		return rentalRepository.findAll();
	}
	
	public Rental createEntity(Date rentDate, User user, Umbrella umbrella) {
		Rental rental = new Rental();
		rental.setRentDate(rentDate);
		rental.setReturnDate(null);
		rental.setUser(user);
		rental.setUmbrella(umbrella);
		return rental;
	}

	public void save(Date rentDate, User user, Umbrella umbrella) { // 대여 엔티티 생성
		Rental rental = createEntity(rentDate, user, umbrella);
		rentalRepository.save(rental);
	}
}
