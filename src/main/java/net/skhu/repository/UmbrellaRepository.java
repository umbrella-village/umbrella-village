package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.entity.Umbrella;

public interface UmbrellaRepository extends JpaRepository<Umbrella, Integer>  {

	Umbrella findById(int id);

}
