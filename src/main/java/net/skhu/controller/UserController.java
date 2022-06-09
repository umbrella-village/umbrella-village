package net.skhu.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.entity.Rental;
import net.skhu.entity.Umbrella;
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
    	// 대여중인 우산
		List<Rental> rentals = rentalService.findRental();
		model.addAttribute("rental", rentals);
		List<Umbrella> umbrellas = UmbrellaService.findAll();
		model.addAttribute("umbrella",umbrellas);
    	model.addAttribute("rentals", rentalRepository.findAll());
        return "user/index";
    }

	@GetMapping("user/returnDetail")
	public String returnDetail(@RequestParam("umbrellaId") int id, Model model) {
		model.addAttribute("umbrella", umbrellaRepository.findById(id));
		return "user/returnDetail";
	}

    // 우산 반납 기능
    @GetMapping("user/returnDetailSubmit")
    public String returnDetailSubmit(HttpServletRequest request, Model model) {

		int umbrella_id = Integer.parseInt(request.getParameter("umbrella_id"));
		Umbrella currentUmbrella = umbrellaRepository.findById(umbrella_id); // 대여하려는 우산
		// RentDate 불러오기?
		Date returnDate = new Date(); // 대여 날짜// DB 저장
//		rentalService.saveReturnDate(returnDate);
		UmbrellaService.saveRentedOrNot(currentUmbrella, false); // 해당 우산을 대여중인 상태로 변경
	    return "user/returnSuccess";
    }
}

/* 대여기록, 반납 기능

컨트롤러 - 마이페이지로 get 들어오면
		getcurrentuser로 현재사용자 알아내서 사용자모델 뷰로넘겨줌

뷰	- 대여기록 - 현재대여목록 - 현재사용자의 rental중에서 returnDate가 null인것
			 - 과거대여목록 - else

반납 컨트롤러 - rentalService에 returnDate저장해주는 메소드 만들고 불러와서 new Date()로 returnDate 만들어주고,
			해당 우산 umbrellaService.saveRentedOrNot써서 false만들어주기

*/

