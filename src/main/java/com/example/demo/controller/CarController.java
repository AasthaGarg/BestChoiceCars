package com.example.demo.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CarDao;
import com.example.demo.model.Car;

@Controller
public class CarController {
	
	@Autowired
	CarDao dao;
	
	@RequestMapping("/Hello")
	public String welcome() {
		return "Hello";
	}

	@RequestMapping("/CarsByPrice")
	public String carsByPrice() {
		return "CarsByPrice";
	}
	
	@RequestMapping("/CarsByBrand")
	public ModelAndView carsByBrand(HttpServletRequest req,HttpServletResponse res) {
		
		ModelAndView mv = new ModelAndView();
		List<String> list = dao.findDistinctBrand();
		
		mv.addObject("car",new Car());
		mv.addObject("list", list);
		mv.setViewName("CarsByBrand");
		return mv;
	}
	
	@RequestMapping("/FindBrand")
	public ModelAndView allCarsWithBrand(HttpServletRequest req,HttpServletResponse res,
			@ModelAttribute("car") Car c) {
		
		ModelAndView mv = new ModelAndView();
		String brand=c.getBrand();
		
		List<Car> list = dao.findByBrand(brand);
		
		mv.addObject("list", list);
		mv.setViewName("ViewBrand");
		return mv;
	}
	
	@RequestMapping("/BookCarByBrand")
	public ModelAndView confirmBookByBrand(HttpServletRequest req,HttpServletResponse res) {
		
        ModelAndView mv = new ModelAndView();
		
		int car_id = Integer.valueOf(req.getParameter("choice"));
	    List<Car> list = dao.findByCid(car_id);
	    
	    String model=null;
	    String brand=null;
	    
	    for(Car c:list) {
	    	model = c.getModel();
	    	brand = c.getBrand();
	    }
	    
		mv.setViewName("ConfirmByPrice");
		mv.addObject("brand", brand);
		mv.addObject("model", model);
		return mv;
	}
	
	@RequestMapping("/FindPriceCar")
	public ModelAndView getCarsByPrice(HttpServletRequest req,HttpServletResponse res) {
		
		ModelAndView mv = new ModelAndView();
		String price = req.getParameter("price");
		
		List<Car> list=null;
		if(price.equals("less"))
			list= dao.findByPriceLessThan(500000);
		else
			list= dao.findByPriceGreaterThan(500000);
		
		mv.addObject("car", new Car());
		mv.addObject("list",list);
		mv.setViewName("ViewPriceCar");
		return mv;
	}
	
	@RequestMapping("/BookCarByPrice")
	public ModelAndView confirmBookByPrice(HttpServletRequest req,HttpServletResponse res) {
		
		ModelAndView mv = new ModelAndView();
		
		int car_id = Integer.valueOf(req.getParameter("choice"));
	    List<Car> list = dao.findByCid(car_id);
	    
	    String model=null;
	    String brand=null;
	    
	    for(Car c:list) {
	    	model = c.getModel();
	    	brand = c.getBrand();
	    }
	    
		mv.setViewName("ConfirmByPrice");
		mv.addObject("brand", brand);
		mv.addObject("model", model);
		return mv;
	}
}
