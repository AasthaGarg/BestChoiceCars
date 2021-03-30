package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.example.demo.model.Car;

public interface CarDao extends CrudRepository<Car, Integer> {
	
	@Query("SELECT DISTINCT c.brand FROM Car c")
	List<String> findDistinctBrand();
	
	@Query("FROM Car c where c.brand =?1")
	List<Car> findByBrand(String brand);
	
	@Query("FROM Car c where c.cid =?1")
	List<Car> findByCid(int id);

	List<Car> findByPriceLessThan(int price);


	List<Car> findByPriceGreaterThan(int price);
}
