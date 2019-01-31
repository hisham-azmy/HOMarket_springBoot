package com.example.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Category;

@Repository
@Transactional
public class CategoryDAOImp implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void AddCategory(Category category) {
		sessionFactory.getCurrentSession().save(category);
	}

	@Override
	public void updateCategory(Category category) {
		sessionFactory.getCurrentSession().update(category);
	}

	@Override
	public void deleteCategory(int id) {
		Category category = (Category) sessionFactory.getCurrentSession().load(Category.class, id);

		if (null != category) {
			this.sessionFactory.getCurrentSession().delete(category);
		}
	}

	@Override
	public List<Category> getAllCategories() {
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	@Override
	public Category getCategoryById(Integer id) {
		return (Category) sessionFactory.getCurrentSession().get(Category.class, id);
	}

	@Override
	public Category getCategoryByName(String name) {
		Query query = sessionFactory.getCurrentSession().createQuery("from Category where name=:name");
		query.setParameter("name", name);
		Category category = (Category) query.uniqueResult();
		return category;
	}

}
