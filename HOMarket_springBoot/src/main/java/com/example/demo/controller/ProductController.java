package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CartDao;
import com.example.demo.model.Cart;
import com.example.demo.model.CartItem;
import com.example.demo.model.Customer;
import com.example.demo.model.Product;
import com.example.demo.service.CategoryService;
import com.example.demo.service.CustomerService;
import com.example.demo.service.ProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private CartDao cartDao;
	
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String Products(ModelAndView model, Model models) {

		models.addAttribute("categories", categoryService.getAllCategories());
		List<Product> allProducts = productService.getAllProducts();
		if (allProducts != null) {
			models.addAttribute("products", allProducts);
		} else {
			System.out.println("It's Empty");
		}

		return "product";
	}

	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public String Product() {

		return "product";
	}

	@RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
	public String ProductDetails(Model model, @PathVariable("id") int id) {
		Product product = productService.getProductById(id);

		model.addAttribute("product", product);

		return "product-detail";
	}

	@RequestMapping(value = "/product-detail/{id}", method = RequestMethod.POST)
	public String ProductDetailsPost(
			/* @ModelAttribute("product") Product product, */ @PathVariable("id") int id, Model model,
			@RequestParam("counter") int counter, HttpServletRequest request) {

		cartDao.EditCart(counter, id);
		return "redirect:/cart";
	}
	
	@RequestMapping(value = "/ajax/search", method = RequestMethod.GET)
	public ModelAndView searchProducts(ModelAndView model, @RequestParam("minPrice") float minPrice, 
			@RequestParam("maxPrice") float maxPrice, @RequestParam("query") String query) {
		
		model.addObject("products", productService.filterProducts(query, minPrice, maxPrice));
		model.setViewName("products_list");
		
		return model;
	}
	
	@RequestMapping(value = "/ajax/filter", method = RequestMethod.GET)
	public ModelAndView filterProduct(ModelAndView model, @RequestParam("minPrice") float minPrice, 
			@RequestParam("maxPrice") float maxPrice) {
		
		model.addObject("products", productService.filterProductsByPrice(minPrice, maxPrice));
		model.setViewName("products_list");
		
		return model;
	}
	
	@RequestMapping(value = "/ajax/filterByName", method = RequestMethod.GET)
	public ModelAndView filterByName(ModelAndView model, @RequestParam("name") String name) {
		
		model.addObject("products", productService.filterProductsByName(name));
		model.setViewName("products_list");
		
		return model;
	}

}
