package com.example.demo.service;

import com.example.demo.dao.CustomerDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.model.Customer;
import com.example.demo.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;


    @Override
    public void AddProduct(Product product) {
        productDao.AddProduct(product);

    }

    @Override
    public void updateProduct(Product product) {
        productDao.updateProduct(product);

    }

    @Override
    public void deleteProduct(int id) {
        productDao.deleteProduct(id);

    }

    @Override
    public List<Product> getAllProducts() {
        return productDao.getAllProducts();
    }

    @Override
    public Product getProductById(int productId) {
        return productDao.getProductById(productId);
    }

	@Override
	public List<Product> filterProductsByPrice(float min, float max) {
		return productDao.filterProductsByPrice(min, max);
	}

	@Override
	public List<Product> filterProductsByName(String name) {
		return productDao.filterProductsByName(name);
	}

	@Override
	public List<Product> filterProducts(String name, float min, float max) {
		return productDao.filterProducts(name, min, max);
	}
}