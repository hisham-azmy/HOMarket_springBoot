package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Customer;
import com.example.demo.model.Employee;

public interface CustomerService {

	public void AddCustomer(Customer cust);

	public void updateCustomer(Customer cust);

	public void deleteCustomer(int id);

	public List<Customer> getAllCustomers();

	public Customer getCustomerById(int custId);

	public Customer getCustomerByName(String custName);
}
