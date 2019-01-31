package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.Category;

public interface CategoryDAO {
	
	public void AddCategory(Category category);

    public void updateCategory(Category category);

    public void deleteCategory(int id);

    public List<Category> getAllCategories();

    public Category getCategoryById(Integer id);

	public Category getCategoryByName(String name);

}
