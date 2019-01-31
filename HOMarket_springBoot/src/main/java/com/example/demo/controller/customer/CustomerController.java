package com.example.demo.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.service.CustomerService;
import com.example.demo.service.ProductService;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	 
	@Autowired
	private ProductService productService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String adminPage(Model model) {
		
		model.addAttribute("title", "Customer Page");
		model.addAttribute("products", productService.getAllProducts());

		return "home-02";
	}

}
