package com.example.demo.admin;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.Category;
import com.example.demo.service.CategoryService;

@Controller
@RequestMapping(value = "/admin/category")
public class AdminCategoryController {

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String createCategory(Model model) {
		model.addAttribute("title", "New Category");
		model.addAttribute("headerMSG", "create a new Category");
		model.addAttribute("category", new Category());
		return "newCategory";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addCategory(@Valid @ModelAttribute Category category, BindingResult br, HttpServletRequest req) {
		if (br.hasErrors()) {
			return "newCategory";
		}
		
		categoryService.AddCategory(category);
		return "redirect:/admin";
	}
	
	
}
