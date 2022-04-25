package net.skhu.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import net.skhu.entity.Umbrella;
import net.skhu.entity.Rental;
import net.skhu.service.RentalService;
import net.skhu.service.UmbrellaService;

@Controller
@RequestMapping("rental")
public class RentalController {

	@Autowired UmbrellaService UmbrellaService;
	@Autowired RentalService rentalService;
	
	@RequestMapping("list")
	public String list(Model model) {
		List<Rental> rentals = rentalService.findRental();
		model.addAttribute("rental", rentals);
		List<Umbrella> umbrellas = UmbrellaService.findAll();
		model.addAttribute("umbrella",umbrellas);
		return "rental/list";
	}
	
}
