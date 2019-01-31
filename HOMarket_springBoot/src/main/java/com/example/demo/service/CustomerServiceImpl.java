package com.example.demo.service;

import com.example.demo.dao.CustomerDao;
import com.example.demo.dao.EmployeeDAO;
import com.example.demo.model.Customer;
import com.example.demo.model.Employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDaoDAO;

	@Override
	public void AddCustomer(Customer cust) {

		customerDaoDAO.AddCustomer(cust);
	}

	@Override
	public void updateCustomer(Customer cust) {
		customerDaoDAO.updateCustomer(cust);

	}

	@Override
	public void deleteCustomer(int id) {
		customerDaoDAO.deleteCustomer(id);
	}

	@Override
	public List<Customer> getAllCustomers() {
		return customerDaoDAO.getAllCustomers();
	}

	@Override
	public Customer getCustomerById(int custId) {
		return customerDaoDAO.getCustomerById(custId);
	}

	@Override
	public Customer getCustomerByName(String custName) {

		return customerDaoDAO.getCustomerByName(custName);
		
	}
}
