package net.skhu.model;

import java.util.Date;
import lombok.Data;
import net.skhu.entity.Umbrella;
import net.skhu.entity.User;

@Data
public class RentalDTO {
	int rental_id;
	Date rentDate;
	Date returnDate;
	User user;
	Umbrella umbrella;
}
