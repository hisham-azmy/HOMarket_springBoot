package com.example.demo.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Cart;
import com.example.demo.model.Customer;
import com.example.demo.model.Role;

import java.util.ArrayList;
import java.util.List;

@Repository
@Transactional
public class CustomerDAOImpl implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private RoleDao roleDao;

	@Override
	public void AddCustomer(Customer cust) {
		cust.setEnabled(true);
		Cart cart = new Cart();
		// Role roleAdmin = roleDao.get(1);
		Role roleAdmin = new Role();
		roleAdmin.setName("USER");
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleAdmin);
		cust.setRoles(roles);
		cust.setCart(cart);
		cart.setCustomer(cust);
		sessionFactory.getCurrentSession().save(cust);
		roleAdmin.setId(cust.getId());
		sessionFactory.getCurrentSession().save(roleAdmin);
	}

	@Override
	public void updateCustomer(Customer cust) {
		sessionFactory.getCurrentSession().update(cust);

	}

	@Override
	public void deleteCustomer(int id) {
		Customer customer = (Customer) sessionFactory.getCurrentSession().load(Customer.class, id);

		if (null != customer) {
			this.sessionFactory.getCurrentSession().delete(customer);
		}
	}

	@Override
	public List<Customer> getAllCustomers() {

		return sessionFactory.getCurrentSession().createQuery("from Customer").list();
	}

	@Override
	public Customer getCustomerById(int custId) {
		Customer customer = (Customer) sessionFactory.getCurrentSession().get(Customer.class, custId);
		return customer;
	}

	@Override
	public Customer getCustomerByName(String custName) {

		Query query = sessionFactory.getCurrentSession().createQuery("from Customer where name=:name");
		query.setParameter("name", custName);
		Customer customer = (Customer) query.uniqueResult();
		return customer;
	}
}