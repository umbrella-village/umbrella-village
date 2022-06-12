package net.skhu.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.skhu.entity.Rental;
import net.skhu.entity.Umbrella;
import net.skhu.entity.User;
import net.skhu.repository.RentalRepository;

@Service
public class RentalService {
   @Autowired RentalRepository rentalRepository;

	public List<Rental> findAll(){
		return rentalRepository.findAll();
	}
   // 유저아이디에 해당하는 rental들을 불러오기
   public List<Rental> findMyRentals(int user_id){
      return rentalRepository.findAllByUser_Id(user_id);
   }

   // 반납하려는 rental 불러오기
   public Rental findReturnTryRental(int rental_id) {
      return rentalRepository.findById(rental_id);
   }


   public Rental createEntity(Date rentDate, Date returnDate, User user, Umbrella umbrella) {
      Rental rental = new Rental();
      rental.setRentDate(rentDate);
      rental.setReturnDate(returnDate);
      rental.setUser(user);
      rental.setUmbrella(umbrella);
      return rental;
   }

   public void save(Date rentDate, Date returnDate, User user, Umbrella umbrella) { // 대여 엔티티 생성
      Rental rental = new Rental();
      rental = createEntity(rentDate, returnDate, user, umbrella);
      rentalRepository.save(rental);
   }


   // 반납을 누르면 해당 rental의 returnDate를 수정
   public void editReturnDate(Rental returnTryRental, Date returnDate) {
      returnTryRental.setReturnDate(returnDate); // returnDate 수정
      rentalRepository.save(returnTryRental); // DB에 저장
   }
}