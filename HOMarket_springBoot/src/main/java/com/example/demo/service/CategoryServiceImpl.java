package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.CategoryDAO;
import com.example.demo.model.Category;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categorydao;

	@Override
	public void AddCategory(Category category) {
		categorydao.AddCategory(category);
	}

	@Override
	public void updateCategory(Category category) {
		categorydao.updateCategory(category);
	}

	@Override
	public void deleteCategory(int id) {
		categorydao.deleteCategory(id);
	}

	@Override
	public List<Category> getAllCategories() {
		return categorydao.getAllCategories();
	}

	@Override
	public Category getCategoryById(Integer id) {
		return categorydao.getCategoryById(id);
	}

	@Override
	public Category getCategoryByName(String name) {
		return categorydao.getCategoryByName(name);
	}

}
