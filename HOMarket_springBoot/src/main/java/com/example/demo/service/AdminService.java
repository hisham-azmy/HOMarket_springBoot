package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Cart;
import com.example.demo.model.CartItem;
import com.example.demo.model.Category;
import com.example.demo.model.Product;

@Service
public class AdminService {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@Transactional
	public void updateProduct(List<Integer> catIds, Product product) {
		List<Category> cat = new ArrayList<Category>();
		List<Integer> itemsOfCategory = catIds;
		for (Integer integer : itemsOfCategory) {
			Category categoryItem = categoryService.getCategoryById(integer);
			cat.add(categoryItem);
		}

		product.setCategories(cat);
		productService.AddProduct(product);
	}

}
