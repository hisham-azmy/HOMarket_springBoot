package com.example.demo.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Product;

import java.util.List;

@Repository
@Transactional
public class ProducttDAOImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void AddProduct(Product product) {

		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	@Override
	public void updateProduct(Product product) {
		sessionFactory.getCurrentSession().update(product);

	}

	@Override
	public void deleteProduct(int id) {
		Product product = (Product) sessionFactory.getCurrentSession().load(Product.class, id);
		if (null != product) {
			this.sessionFactory.getCurrentSession().delete(product);
			this.sessionFactory.getCurrentSession().flush();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAllProducts() {
		Query q = sessionFactory.getCurrentSession().createQuery("from Product");
		List<Product> allProducts = (List<Product>) q.list();
		return allProducts;
	}

	@Override
	public Product getProductById(int productId) {

		return (Product) sessionFactory.getCurrentSession().get(Product.class, productId);
	}

	@Override
	public List<Product> filterProductsByPrice(float min, float max) {
		Query q = sessionFactory.getCurrentSession().createQuery("from Product where price>:min and price<:max");
		q.setParameter("min", min);
		q.setParameter("max", max);
		List<Product> allProducts = (List<Product>) q.list();
		return allProducts;
	}

	@Override
	public List<Product> filterProductsByName(String name) {
		Query q = sessionFactory.getCurrentSession().createQuery("from Product where name LIKE :name");
		q.setParameter("name", "%" + name + "%");
		List<Product> allProducts = (List<Product>) q.list();
		return allProducts;
	}

	@Override
	public List<Product> filterProducts(String name, float min, float max) {
		Query q = sessionFactory.getCurrentSession()
				.createQuery("from Product where price>:min and price<:max and name LIKE :name");
		q.setParameter("min", min);
		q.setParameter("max", max);
		q.setParameter("name", "%" + name + "%");
		List<Product> allProducts = (List<Product>) q.list();
		return allProducts;
	}
}