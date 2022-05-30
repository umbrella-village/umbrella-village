package net.skhu.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.model.UserSignUp;
import net.skhu.repository.LocationRepository;
import net.skhu.repository.UmbrellaRepository;
import net.skhu.repository.UserRepository;
import net.skhu.service.RentalService;
import net.skhu.service.UmbrellaService;
import net.skhu.service.UserService;

@Controller
public class HomeController {
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

	@RequestMapping({ "/", "index" })
	public String index() {
		return "home/index";
	}

	@RequestMapping("login")
	public String login() {
		return "home/login";
	}

	@GetMapping("signUp")
	public String signup(Model model) {
		model.addAttribute(new UserSignUp());
		return "home/signUp";
	}

	@PostMapping("signUp")
	public String signup(Model model, @Valid UserSignUp userSignUp, BindingResult bindingResult) {
		if (userService.hasErrors(userSignUp, bindingResult)) {
			return "home/signUp";
		}
		userService.save(userSignUp);
		return "redirect:signUpSuccess";
	}

	@RequestMapping("signUpSuccess")
	public String signupSuccess() {
		return "home/signUpSuccess";
	}

	@RequestMapping("about")
	public String about() {
		return "home/about";
	}

}
