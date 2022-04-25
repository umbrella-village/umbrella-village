package net.skhu.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import net.skhu.entity.Umbrella;
import net.skhu.repository.UmbrellaRepository;

@Service
public class UmbrellaService {

	@Autowired UmbrellaRepository umbrellaRepository;
	
	public List<Umbrella> findAll(){
		return umbrellaRepository.findAll();
	}

}
