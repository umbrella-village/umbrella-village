package net.skhu.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.entity.Umbrella;
import net.skhu.entity.User;
import net.skhu.repository.LocationRepository;
import net.skhu.repository.UmbrellaRepository;
import net.skhu.repository.UserRepository;
import net.skhu.service.RentalService;
import net.skhu.service.UmbrellaService;
import net.skhu.service.UserService;

@Controller
public class RentController {
	@Autowired
	LocationRepository locationRepository;
	@Autowired
	UmbrellaRepository umbrellaRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	UserService userService;
	@Autowired
	RentalService rentalService;
	@Autowired
	UmbrellaService umbrellaService;

	@RequestMapping({ "rent" })
	public String rent(Model model) {
		model.addAttribute("locations", locationRepository.findAll());
		return "rent/rent";
	}

	@GetMapping("rentDetail")
	public String rentDetail(@RequestParam("umbrellaId") int id, Model model) {
		model.addAttribute("umbrella", umbrellaRepository.findById(id));
		return "rent/rentDetail";
	}

	@GetMapping("rentDetailSubmit")
	public String rentDetailSubmit(HttpServletRequest request, Model model) {

		int umbrella_id = Integer.parseInt(request.getParameter("umbrella_id"));

		Date rentDate = new Date(); // 대여 날짜
		User currentUser = userService.getCurrentUser(); // 현재 사용자
		Umbrella currentUmbrella = umbrellaRepository.findById(umbrella_id); // 대여하려는 우산

		if (currentUser != null) { // DB 저장
			rentalService.save(rentDate, currentUser, currentUmbrella);
			umbrellaService.saveRentedOrNot(currentUmbrella, true); // 해당 우산을 대여중인 상태로 변경
			return "rent/rentSuccess";
		}
		else { // 로그인 안한 사용자면 로그인 페이지로
			return "home/login";
		}
	}
}
