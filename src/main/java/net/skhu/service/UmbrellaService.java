package net.skhu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.skhu.entity.Umbrella;
import net.skhu.repository.UmbrellaRepository;

@Service
public class UmbrellaService {
	@Autowired UmbrellaRepository umbrellaRepository;

	public Umbrella setRentedOrNot(Umbrella umbrella, boolean rentedOrNot) {
		umbrella.setRentedOrNot(rentedOrNot);
		return umbrella;
	}

	public void saveRentedOrNot(Umbrella umbrella, boolean rentedOrNot) { // 우산 대여상태를 바꿈 (rentedOrNot가 1이면 대여중)
		umbrella = setRentedOrNot(umbrella, rentedOrNot);
		umbrellaRepository.save(umbrella);
	}
}
