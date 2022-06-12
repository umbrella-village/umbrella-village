package net.skhu.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.entity.Rental;
import net.skhu.entity.Umbrella;
import net.skhu.entity.User;
import net.skhu.repository.LocationRepository;
import net.skhu.repository.RentalRepository;
import net.skhu.repository.UmbrellaRepository;
import net.skhu.repository.UserRepository;
import net.skhu.service.RentalService;
import net.skhu.service.UmbrellaService;
import net.skhu.service.UserService;

@Controller
public class UserController {
   @Autowired
   LocationRepository locationRepository;
   @Autowired
   UmbrellaRepository umbrellaRepository;
   @Autowired
   UserRepository userRepository;
   @Autowired
   RentalRepository rentalRepository;
   @Autowired
   UserService userService;
   @Autowired
   RentalService rentalService;
   @Autowired UmbrellaService UmbrellaService;

    @RequestMapping("user/index")
    public String index(Model model) {

       // 마이페이지 get요청이 들어오면 필요한 데이터들 넘겨주기
       User currentUser = userService.getCurrentUser(); // 현재 사용자
       int currentUser_id = currentUser.getId(); // 현재 사용자 id
       model.addAttribute("myRentals", rentalService.findMyRentals(currentUser_id)); // 현재 사용자의 rental 목록

       return "user/index";
    }

   @GetMapping("user/returnDetailSubmit")
   public String returnDetailSubmit(HttpServletRequest request, Model model) { // jsp form에서 반납하려는 rental id값 받아옴

      // 요청된 rental_id 가져오기
      int rental_id = Integer.parseInt(request.getParameter("myRentals.rental_id")); // form으로 받은 rental_id를 형변환

      // 필요한 정보들 DB에서 불러오기
      Rental returnTryRental = rentalService.findReturnTryRental(rental_id); // 반납하려는 rental 불러오기
      Umbrella returnTryUmbrella = returnTryRental.getUmbrella(); // 반납하려는 우산 불러오기
      Date returnDate = new Date(); // 현재 시각

      // 반납 처리
      rentalService.editReturnDate(returnTryRental, returnDate); // 반납하려는 rental의 returnDate을 현재 시각으로 수정
      UmbrellaService.saveRentedOrNot(returnTryUmbrella, false); // 우산을 대여 가능한 상태로 변경

      return "user/returnSuccess";
   }
}