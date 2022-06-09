package net.skhu.config;

import java.util.Date;
import lombok.Data;
import net.skhu.entity.Umbrella;
import net.skhu.entity.User;
import net.skhu.entity.Rental;

@Data
public class RentalDetails {
	final int rental_id;
	final Date rentDate;
	final Date returnDate;
	final User user;
	final Umbrella umbrella;
	final Rental rental;
	
	public RentalDetails(Rental rental) {
		this.rental_id = rental.getRental_id();
		this.rentDate = rental.getRentDate();
		this.returnDate = rental.getReturnDate();
		this.user = rental.getUser();
		this.umbrella = rental.getUmbrella();
		this.rental = rental;
		
	}
	
}
