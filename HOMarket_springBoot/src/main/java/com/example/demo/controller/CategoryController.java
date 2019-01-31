package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.Category;
import com.example.demo.service.CategoryService;

@Controller
@RequestMapping(value = "/category")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String getCategory(Model model, @PathVariable("id") int id) {
		Category category = categoryService.getCategoryById(id);
		model.addAttribute("products", category.getProducts()) ;
		model.addAttribute("categories", categoryService.getAllCategories());
		return "product";
	}
	
	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String allCategories(Model model) {
		
		model.addAttribute("title", "New Category");
		model.addAttribute("categories", categoryService.getAllCategories());
		return "categories";
	}
	
}
