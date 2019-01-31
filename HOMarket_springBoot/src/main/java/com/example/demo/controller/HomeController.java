package com.example.demo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Customer;
import com.example.demo.service.CustomerService;
import com.example.demo.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		Customer customer = new Customer();
		model.addObject("customer", customer);
		model.setViewName("registeration");
		return model;
	}

	@RequestMapping(value = "/registeration", method = RequestMethod.POST)
	public String saveEmployee(@Valid @ModelAttribute Customer customer, BindingResult br, Model model) {

		if (br.hasErrors()) {
			return "registeration";
		}

		customerService.AddCustomer(customer);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home2(Model model) {
		model.addAttribute("title", "Home Page");
		model.addAttribute("products", productService.getAllProducts());
		return "home-02";
	}
	
	@RequestMapping(value = "/access-denied", method = RequestMethod.POST)
	public String accessDenied() {
		
		return "access-denied";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		
		if (error != null) {
			model.addAttribute("error", "username or password is wrong.");
		}

		if (logout != null) {
			model.addAttribute("msg", "you have to logout.");
		}
		
		return "c_login";
	}
	
}
